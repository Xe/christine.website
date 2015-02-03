import Widget from require "lapis.html"

class Repo extends Widget
  content: =>
    meta name: "go-import", content: "christine.website/go/#{@repo} git https://github.com/Xe/#{@repo}"
    meta ["http-equiv"]: "refresh", content: "0;http://godoc.org/github.com/Xe/#{@repo}"
