import Widget from require "lapis.html"

class UserInfo extends Widget
  content: =>
    center ->
      h1 "Oops!"

      p "Page not found!"

      div style: "position:relative", ->
        div style: "position:absolute; top:50%; width: 400px", ->
          img src: "/static/img/404.png"
