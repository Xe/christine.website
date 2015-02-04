import Widget from require "lapis.html"

class About extends Widget
  content: =>
    link rel: "stylesheet", href: "/static/css/about/main.css"

    div class: "row panel", ->
      div class: "col-md-4 bg_blur", ->
        a href: "/contact", class: "follow_btn hidden-xs", "Contact Me"

      div class: "col-md-8 col-xs-12", ->
        img src: @user.avatar_url, class: "img-thumbnail picture hidden-xs"
        img src: @user.avatar_url, class: "img-thumbnail picture visible-xs picture_mob"

        div class: "header", ->
          h1 "Christine Dodrill"
          h4 "Rockstar Hacker, Freelance Programmer, Gopher, Cloud Architect"
          span "I am a GitHub power user. I am constantly learning new languages and tools. I strongly believe in knowing many languages and ways to do things so I can pick the right tool for the job."

    raw [[<a class="twitter-timeline" href="https://twitter.com/theprincessxena" data-widget-id="562968619655917568">Tweets by @theprincessxena</a><script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>]]
