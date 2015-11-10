import Widget from require "lapis.html"

class Layout extends Widget
  head: =>
    meta charset: "UTF-8"

    title ->
      if @title
        text "#{@title} - Christine Dodrill"
      else
        text "Christine Dodrill"

    if @meta_description
      meta property: "og:description", content: @meta_description
      meta name: "description", content: @meta_description

    link rel: "stylesheet", href: "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css"
    link rel: "stylesheet", href: "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap-theme.min.css"
    link rel: "stylesheet", href: "/static/css/font-awesome.min.css"
    link rel: "stylesheet", href: "/static/css/readable.css"
    link rel: "stylesheet", href: "/static/css/main.css"

    link type: "text/plain", rel: "author", href: "/humans.txt"

    script src: "https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"
    script src: "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"
    script src: "/static/js/instantclick.min.js"

    meta name: "viewport", content: "ya-title=#FFF9FD,ya-dock=#FFF9FD"

    link rel: "alternate", type: "application/rss+xml", title: "Christine Dodrill's Blog", href: "/blog.rss"

  header: =>
    nav class: "navbar navbar-fixed-top", ->
      div class: "container", ->
        div class: "navbar-header", ->
          button type: "button", class: "navbar-toggle collapsed", ["data-toggle"]: "collapse", ["data-target"]: "#navbar", ["aria-expanded"]: "false", ["aria-controls"]: "navbar", ->
            span class: "sr-only", ->
              text "Toggle navigation"

            for i=1,3
              span class: "icon-bar"

          a class: "navbar-brand", href: "/", ->
            text "Christine Dodrill"

        div id: "navbar", class: "collapse navbar-collapse", ->
          ul class: "nav navbar-nav", ->
            li ->
              a href: "/blog", "Blog"
            li ->
              a href: "/projects", "Projects"
            li ->
              a href: "/resume", "Resume"

          ul class: "nav navbar-nav navbar-right", ->
            li ->
              a href: "/contact", "Contact"

  footer: =>
    footer ->
      div class: "container footer", ->
        center ->
          p class: "text-muted", ->
            text "Christine Dodrill - #{os.date "%Y"}"

            if os.getenv "GIT_REV"
              text " - revision "
              a href: "https://github.com/Xe/christine.website/commit/#{os.getenv("GIT_REV")}", ->
                code "#{os.getenv("GIT_REV")\sub 1,12}"

  body: =>
    raw [[<a href="https://github.com/Xe/christine.website" class="github-corner"><svg width="80px" height="80px" viewBox="0 0 250 250" style="fill:#151513; color:#fff; position: absolute; top: 0; border: 0; right: 0;"><path d="M0,0 L115,115 L130,115 L142,142 L250,250 L250,0 Z"></path><path d="M128.3,109.0 C113.8,99.7 119.0,89.6 119.0,89.6 C122.0,82.7 120.5,78.6 120.5,78.6 C119.2,72.0 123.4,76.3 123.4,76.3 C127.3,80.9 125.5,87.3 125.5,87.3 C122.9,97.6 130.6,101.9 134.4,103.2" fill="currentColor" style="transform-origin: 130px 106px;" class="octo-arm"></path><path d="M115.0,115.0 C114.9,115.1 118.7,116.5 119.8,115.4 L133.7,101.6 C136.9,99.2 139.9,98.4 142.2,98.6 C133.8,88.0 127.5,74.4 143.8,58.0 C148.5,53.4 154.0,51.2 159.7,51.0 C160.3,49.4 163.2,43.6 171.4,40.1 C171.4,40.1 176.1,42.5 178.8,56.2 C183.1,58.6 187.2,61.8 190.9,65.4 C194.5,69.0 197.7,73.2 200.1,77.6 C213.8,80.2 216.3,84.9 216.3,84.9 C212.7,93.1 206.9,96.0 205.4,96.6 C205.1,102.4 203.0,107.8 198.3,112.5 C181.9,128.9 168.3,122.5 157.7,114.1 C157.9,116.9 156.7,120.9 152.7,124.9 L141.0,136.5 C139.8,137.7 141.6,141.9 141.8,141.8 Z" fill="currentColor" class="octo-body"></path></svg></a><style>.github-corner:hover .octo-arm{animation:octocat-wave 560ms ease-in-out}@keyframes octocat-wave{0%,100%{transform:rotate(0)}20%,60%{transform:rotate(-25deg)}40%,80%{transform:rotate(10deg)}}@media (max-width:500px){.github-corner:hover .octo-arm{animation:none}.github-corner .octo-arm{animation:octocat-wave 560ms ease-in-out}}</style>]]

    div class: "container", ->
      if @flash
        div class: "flash", ->
          text @flash

      @content_for "inner"

  content: =>
    html_5 ->
      head ->
        @head!

      body ->
        @header!
        @body!
        @footer!
