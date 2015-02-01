import Widget from require "lapis.html"

class About extends Widget
  content: =>
    link rel: "stylesheet", href: "/static/css/about/main.css"

    div class: "row panel", ->
      div class: "col-md-4 bg_blur", ->
        a href: "/hire", class: "follow_btn hidden-xs", "Hire me"

      div class: "col-md-8 col-xs-12", ->
        img src: @user.avatar_url, class: "img-thumbnail picture hidden-xs"
        img src: @user.avatar_url, class: "img-thumbnail picture visible-xs picture_mob"

        div class: "header", ->
          h1 "Christine Dodrill"
          h4 "Rockstar Hacker, Freelance Programmer, Gopher, Cloud Architect"
          span "I am a GitHub power user. I am constantly learning new languages and tools. I strongly believe in knowing many languages and ways to do things so I can pick the right tool for the job."

    div class: "row nav", ->
      div class: "col-md-12 col-xs-12", style: "margin: 0px;padding: 0px;", ->
        div class: "col-md-4 col-xs-4 well", title: "Number of public repositories", ->
          i class: "fa fa-weixin fa-lg"
          p @user.public_repos

        div class: "col-md-4 col-xs-4 well", title: "Number of followers", ->
          i class: "fa fa-heart-o fa-lg"
          p @user.followers

        div class: "col-md-4 col-xs-4 well", title: "Number of users following", ->
          i class: "fa fa-thumbs-o-up fa-lg"
          p @user.following
