lapis = require "lapis"

class extends lapis.Application
  layout: require "layout.bootstrap"

  @include "controllers.about"

  [index: "/"]: =>
    render: true

  [contact: "/contact"]: =>
    render: true

  handle_404: =>
    status: 404, render: "notfound"
