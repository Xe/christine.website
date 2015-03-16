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
        h3 "Email"

        div class: "row", ->
          div class: "col-md-6", ->
            h4 "Personal"
            div class: "email", ->
              text "xena@yolo-swag.com"
          div class: "col-md-6", ->
            h4 "Professional"
            div class: "email", ->
              text "me@christine.website"
        br!

        p ->
          text "My GPG fingerprint is "
          code ->
            text "799F 9134 8118 1111"
          text ". If you get an email that appears to be from me and the signature does not match that fingerprint, it is not from me. You may download a copy of my public key "
          a href: "/static/gpg.pub", "here"
          text "."

        p ->
          text "To email me quickly, please fill out "
          a href: "/contact/email", "this form"
          text "."

      div class: "col-md-6", ->
        h3 "IRC"

        p "I am on many IRC networks. On Freenode I am using the nick Xe but elsewhere I will use the nick Xena."

    h3 ->
      text "Social Media"

    div class: "row", ->
      socialLink "github.png", "https://github.com/Xe", "GitHub"
      socialLink "twitter.png", "https://twitter.com/theprincessxena", "Twitter"
      socialLink "medium.jpg", "https://medium.com/@theprincessxena", "Medium"

    div class: "row", ->
      socialLink "youtube.png", "https://youtube.com/shadowh511", "YouTube"
      socialLink "reddit.png", "https://reddit.com/user/shadowh511", "Reddit"
      socialLink "keybase.png", "https://keybase.io/xena", "Keybase"
