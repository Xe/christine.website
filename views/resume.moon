import Widget from require "lapis.html"

class Resume extends Widget
  content: =>
    raw @doc

    p ->
      text "For a plain text version of this resume, click "
      a href: "/static/resume/min/resume.md", "here"
      text "."
