gh = require('github').new({access_token: os.getenv "GITHUB_TOKEN", httpclient_driver: 'httpclient.ngx_driver'})
lapis = require "lapis"

class extends lapis.Application
  layout: require "layout.bootstrap"

  @include "controllers.email"
  @include "controllers.projects"
  @include "controllers.go"

  [index: "/"]: =>
    @user, err = gh\get_authenticated_user()

    if err
        @err = err

        return status: 500, render: "error"

    render: true

  [contact: "/contact"]: =>
    @title = "Contact"
    render: true

  "/resume": =>
    redirect_to: "/resume/"

  [error: "/error"]: =>
    render: true, status: 500

  handle_404: =>
    status: 404, render: "notfound"
