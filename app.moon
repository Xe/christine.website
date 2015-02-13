lapis = require "lapis"

class extends lapis.Application
  layout: require "layout.bootstrap"

  @include "controllers.email"
  @include "controllers.projects"
  @include "controllers.go"
  @include "controllers.resume"

  [index: "/"]: =>
    render: true

  [contact: "/contact"]: =>
    @title = "Contact"
    render: true

  [error: "/error"]: =>
    render: true, status: 500

  handle_404: =>
    status: 404, render: "notfound"
