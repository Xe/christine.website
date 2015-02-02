lapis = require "lapis"

class Go extends lapis.Application
  [repo: "/go/:name"]: =>
    @repo = @params.name

    render: true
