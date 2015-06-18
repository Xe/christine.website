lapis = require "lapis"
oleg  = require "lib/oleg"

import cached from require "lapis.cache"

class extends lapis.Application
  layout: require "layout.bootstrap"

  @include "controllers.email"
  @include "controllers.projects"
  @include "controllers.go"
  @include "controllers.resume"
  @include "controllers.index"
  @include "controllers.blog"

  [contact: "/contact"]: cached {
    dict: oleg.pagecache
    =>
      @page = "contact"
      @title = "Contact"
      render: true
  }

  [error: "/error"]: =>
    render: true, status: 500

  handle_error: (err, trace) =>
    @err = err
    ngx.log ngx.ERR, err .. " " .. trace
    render: "error", status: 500

  handle_404: =>
    status: 404, render: "notfound"
