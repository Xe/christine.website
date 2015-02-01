import Widget from require "lapis.html"

class Index extends Widget
  content: =>
    center ->
      h1 "Contact Info"

    p class: "lead", ->
      text "IRC"

    p "I am on many IRC networks. On Freenode I am using the nick Xe but elsewhere I will use the nick Xena."

    p class: "lead", ->
      text "Social Media"

    div class: "row", ->
      div class: "col-md-4", ->
        img src: "/static/img/contact/github.png", height: 150, width: 150
        a href: "http://github.com/Xe", "GitHub"

      div class: "col-md-4", ->
        img src: "/static/img/contact/twitter.png", height: 150, width: 150
        a href: "http://twitter.com/theprincessxena", "Twitter"

      div class: "col-md-4", ->
        img src: "/static/img/contact/medium.jpg", height: 150, width: 150
        a href: "http://medium.com/@theprincessxena", "Medium"
