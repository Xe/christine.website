import Widget from require "lapis.html"

class Error extends Widget
  content: =>
    center ->
      h1 "Oops!"

      img src: "/static/img/error.png"

      if @err
        p @err
      else
        p "If this was a real error there would be debug text here."
