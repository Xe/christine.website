import Widget from require "lapis.html"

class Index extends Widget
  content: =>
    socialLink = (imgl, url, name) ->
      div class: "col-md-4", ->
        img src: "/static/img/contact/" .. imgl, height: 250, width: 250
        a class: "lead", href: url, name

    style [[ img { padding-top: 25px; padding-right: 25px; padding-bottom: 25px; padding-left: 25px; } ]]
    center ->
      h1 "Contact Info"

    div class: "row", ->
      div class: "col-md-6", ->
        p class: "lead", "Email"

        div class: "email", ->
          text "xena@yolo-swag.com"
        br!

        p ->
          text "My GPG fingerprint is "
          code ->
            text "0x2E5CBE74"
          text ". If you get an email that appears to be from me and the signature does not match that fingerprint, it is not from me."

        p ->
          text "To email me quickly, please fill out "
          a href: "/contact/email", "this form"
          text "."

      div class: "col-md-6", ->
        p class: "lead", ->
          text "IRC"

        p "I am on many IRC networks. On Freenode I am using the nick Xe but elsewhere I will use the nick Xena."

    p class: "lead", ->
      text "Social Media"

    div class: "row", ->
      socialLink "github.png", "http://github.com/Xe", "GitHub"
      socialLink "twitter.png", "http://twitter.com/theprincessxena", "Twitter"
      socialLink "medium.jpg", "http://medium.com/@theprincessxena", "Medium"

    div class: "row", ->
      socialLink "youtube.png", "http://youtube.com/shadowh511", "YouTube"
      socialLink "reddit.png", "http://reddit.com/user/shadowh511", "Reddit"
