discount = require "discount"

import walk from require "pl.dir"

describe "blog posts", ->
  for root, dirs, files in walk "./blog"
    for _, name in pairs files
      data = ""
      htmldata = ""

      it "#{name} can be opened and read", ->
        fin = assert io.open "blog/" .. name, "r"
        data = assert fin\read "*a"
        assert fin\close!

      it "#{name} should parse correctly", ->
        htmldata = assert discount data, "toc", "nopants", "autolink"
