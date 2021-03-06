lapis = require "lapis"

class Go extends lapis.Application
  [repo: "/go/:name"]: =>
    @kind = "github"
    @repo = @params.name

    render: true, layout: false

  [repo: "/go/:name/*"]: =>
    @repo = @params.name

    render: true, layout: false
