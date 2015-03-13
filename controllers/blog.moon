discount = require "discount"
lapis    = require "lapis"
file     = require "pl.file"
oleg     = require "lib/oleg"
path     = require "pl.path"
util     = require "lapis.util"

split = require "util"

class Blog extends lapis.Application
  ["blog.index": "/blog"]: =>
    @doc = oleg.cache "caches", "blog-index", ->
      local data
      with io.open "static/markdown/blog.html", "r"
        data = \read "*a"
      data

    @title = "Blog"
    @page = "blog"

    render: true

  ["blog.post": "/blog/:name"]: =>
    @name = util.slugify @params.name

    unless path.exists "blog/#{@name}.markdown"
      return render: "notfound", status: 404

    @doc = oleg.cache "blogposts", @name, ->
      local data
      do
        fin = io.open "blog/#{@name}.markdown", "r"
        fin\read "*l"
        fin\read "*l"
        fin\read "*l"
        data = fin\read "*a"
        fin\close!

      discount data, "toc", "nopants", "autolink"

    with io.open "blog/#{@name}.markdown", "r"
      @title = \read "*l"
      \close!

    @page = "blog"

    render: true
