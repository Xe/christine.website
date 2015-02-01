import Widget from require "lapis.html"

class Error extends Widget
  content: =>
    center ->
      h1 "Oops!"

      img src: "/static/img/error.png"

      p @err
