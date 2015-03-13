discount = require "discount"
lapis    = require "lapis"
oleg     = require "lib/oleg"

class Projects extends lapis.Application
  [resume: "/resume"]: =>
    @title = "Resume"
    @page = "resume"

    @doc = oleg.cache "caches", "resume", ->
      local data
      with io.open "static/resume/min/resume.md", "r"
        data = \read "*a"

      discount data, "toc", "nopants", "autolink"

    render: true
