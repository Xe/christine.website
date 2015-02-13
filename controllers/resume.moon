discount = require "discount"
lapis    = require "lapis"
oleg     = require "lib/oleg"

class Projects extends lapis.Application
  [resume: "/resume"]: =>
    @title = "Resume"

    @doc, @err = oleg.get "resume", "cached"

    if @err
      ngx.log ngx.NOTICE, "Need to cache resume HTML"

      local data
      with io.open "static/resume/min/resume.md", "r"
        data = \read "*a"

      @doc = discount data, "toc", "nopants", "autolink"

      oleg.set "resume", "cached", @doc

    elseif @err
      @err = "OlegDB returned code #{@err}."
      return render: "error", status_code: 500

    render: true
