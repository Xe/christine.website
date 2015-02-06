lapis = require "lapis"

class extends lapis.Application
  layout: require "layout.bootstrap"

  @include "controllers.email"
  @include "controllers.projects"
  @include "controllers.go"

  [index: "/"]: =>
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
