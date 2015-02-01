lapis = require "lapis"

class extends lapis.Application
  layout: require "layout.bootstrap"

  @include "controllers.about"
  @include "controllers.hire"

  [index: "/"]: =>
    render: true

  [contact: "/contact"]: =>
    render: true

  [error: "/error"]: =>
    render: true, status: 500

  handle_404: =>
    status: 404, render: "notfound"
