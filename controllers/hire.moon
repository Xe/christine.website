lapis = require "lapis"
csrf = require "lapis.csrf"
http = require "lapis.nginx.http"
mime = require "mime"

import respond_to from require "lapis.application"
import assert_valid from require "lapis.validate"

class Hire extends lapis.Application
  [hire: "/hire"]: respond_to {
    GET: =>
      @csrf_token = csrf.generate_token @
      return render: true

    POST: =>
      csrf.assert_token @

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
          from: "#{params.name} <siteusernoreply@mailgun.xeserv.us>",
          to: "xena@yolo-swag.com",
          subject: "I want to hire you!",
          text: "Email from #{@params.name}:\n\n#{@params.message}\n\nPlease reply to #{@params.email}."
        }
      }

      if code != 200
        @err = res
        return render: "error", status: 500

      return render: "success"
  }
