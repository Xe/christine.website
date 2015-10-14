discount = require "discount"
https    = require "ssl.https"
stringx  = require "pl.stringx"

import walk from require "pl.dir"

describe "blog posts", ->
  for root, dirs, files in walk "./blog"
    for _, name in pairs files
      describe "#{name}", ->
        data = ""
        htmldata = ""
        export data, htmldata

        it "can be opened and read", ->
          fin = assert io.open "blog/" .. name, "r"
          data = assert fin\read "*a"
          assert fin\close!

        it "should parse correctly", ->
          htmldata = discount data, "toc", "nopants", "autolink"

        it "should be more than 500 bytes long", ->
          assert #htmldata > 500

        --for link in htmldata\gmatch "a href=\"(.-)\""
        --  print link
        --
        --  it "has link `#{link}` that is valid", ->
        --    return if link[1] == "/"
        --    assert link\match "https?://[%w-_%.%?%.:/%+=&]+"
        --
        --  it "has link `#{link}` resolves", ->
        --    res, code = https.request link
        --
        --    assert.same 200, code
