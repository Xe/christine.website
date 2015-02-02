import Widget from require "lapis.html"

class Repo extends Widget
  content: =>
    if @kind == "xeserv"
      meta name: "go-import", content: "christine.website/go/xeserv/#{@repo} git http://git.xeserv.us/#{repo}"
    else
      meta name: "go-import", content: "christine.website/go/#{@repo} git https://github.com/Xe/#{@repo}"
