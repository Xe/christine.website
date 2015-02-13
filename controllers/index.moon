discount = require "discount"
lapis    = require "lapis"
oleg     = require "lib/oleg"

class Index extends lapis.Application
  [index: "/"]: =>
    @doc = oleg.cache "caches", "index", ->
      local data
      with io.open "static/markdown/index.md", "r"
        data = \read "*a"

      discount data, "toc", "nopants", "autolink"

    render: true
