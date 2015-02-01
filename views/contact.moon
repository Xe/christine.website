import Widget from require "lapis.html"

class Index extends Widget
  content: =>
    link = (img, url, name) ->
      div class: "col-md-4", ->
        img src: "/static/img/contact/" .. img, height: 250, width: 250
        a class: "lead", href: url, name

    style [[ img { padding-top: 25px; padding-right: 25px; padding-bottom: 25px; padding-left: 25px; } ]]
    center ->
      h1 "Contact Info"

    p class: "lead", ->
      text "IRC"

    p "I am on many IRC networks. On Freenode I am using the nick Xe but elsewhere I will use the nick Xena."

    p class: "lead", ->
      text "Social Media"

    div class: "row", ->
      link "github.png", "http://github.com/Xe", "GitHub"
      link "twitter.png", "http://twitter.com/theprincessxena", "Twitter"
      link "medium.jpg", "http://medium.com/@theprincessxena", "Medium"

    div class: "row", ->
      link "youtube.png", "http://youtube.com/shadowh511", "YouTube"
      link "reddit.jpg", "http://reddit.com/user/shadowh511", "Reddit"
