import Widget from require "lapis.html"

class Repo extends Widget
  content: =>
    if @kind == "xeserv"
      meta name: "go-import", content: "christine.website/go/xeserv/#{@repo} git http://git.xeserv.us/#{repo}"
    else
      meta name: "go-import", content: "christine.website/go/#{@repo} git https://github.com/Xe/#{@repo}"

    center ->
      h1 ->
        text "Link"

      p class: "lead", ->
        text "This is a page for "
        a href: "http://golang.org", "Go"
        text " redirection for repository downloads. This page won't be any use to you in a browser."
