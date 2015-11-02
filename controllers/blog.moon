discount = require "discount"
lapis    = require "lapis"
file     = require "pl.file"
oleg     = require "lib/oleg"
path     = require "pl.path"
postutil = require "lib/post"
stringx  = require "pl.stringx"
util     = require "lapis.util"
dir      = require "pl.dir"

split = require "util"

class Blog extends lapis.Application
  ["blog.index": "/blog"]: =>
    @doc = oleg.cache "caches", "blog-index", ->
      local data
      with io.open "static/markdown/blog.html", "r"
        data = \read "*a"
        \close!
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

  ["blog.rss": "/blog.rss"]: =>
    @posts = postutil.getPosts!

    render: true, layout: false, content_type: "application/rss+xml; charset=UTF-8"