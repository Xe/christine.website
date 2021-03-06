lapis = require "lapis"
csrf = require "lapis.csrf"
http = require "lapis.nginx.http"
mime = require "mime"

import respond_to from require "lapis.application"
import assert_valid from require "lapis.validate"

class Email extends lapis.Application
  [email: "/contact/email"]: respond_to {
    GET: =>
      @title = "Contact Me"
      @page = "contact"
      @csrf_token = csrf.generate_token @
      return render: true

    POST: =>
      csrf.assert_token @

      @page = "contact"

      assert_valid @params, {
        { "name", exists: true, min_length: 3 }
        { "message", exists: true, min_length: 15 }
        { "email", exists: true, min_length: 3 }
      }

      res, code = http.simple{
        url: "https://api.mailgun.net/v2/mailgun.xeserv.us/messages"
        headers: {
          "authentication": "Basic " .. (mime.b64 os.getenv "MAILGUN_KEY")
        }
        method: "POST"
        body: {
          from: "#{@params.name} <siteusernoreply@mailgun.xeserv.us>",
          to: "me@christine.website",
          subject: "Contact on https://christine.website",
          text: "Email from #{@params.name}:\n\n#{@params.message}\n\nPlease reply to #{@params.email}."
        }
      }

      if code != 200
        @err = res
        return render: "error", status: 500

      @title = "Success"

      return render: "success"
  }
