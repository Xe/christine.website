discount = require "discount"
lapis    = require "lapis"
file     = require "pl.file"
http     = require "lapis.nginx.http"
oleg     = require "lib/oleg"
util     = require "lapis.util"
dir      = require "pl.dir"

import render_html from require "lapis.html"
split = require "util"

class Blog extends lapis.Application
  ["blog.index": "/blog"]: =>
    @doc = oleg.cache "caches", "blog-index", ->
      local data
      with io.open "static/markdown/blog.html", "r"
        data = \read "*a"
      data

    render: true

  ["blog.post": "/blog/:name"]: =>
    @name = util.slugify @params.name
    @doc = oleg.cache "blogposts", @name, ->
      local data
      with io.open "blog/#{@name}.markdown", "r"
        data = \read "*a"

      discount data, "toc", "nopants", "autolink"

    render: true
