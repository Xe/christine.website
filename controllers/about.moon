gh = require('github').new({access_token: os.getenv "GITHUB_TOKEN", httpclient_driver: 'httpclient.ngx_driver'})

lapis = require "lapis"

class About extends lapis.Application
  [about: "/about"]: =>
    @user, err = gh\get_authenticated_user()

    if err
      @err = err

      return status: 500, render: "error"

    return render: true
