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
    link rel: "stylesheet", href: "https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
    link rel: "stylesheet", href: "/static/css/readable.css"
    link rel: "stylesheet", href: "/static/css/main.css"

    script src: "https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"
    script src: "https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"
    script src: "/static/js/instantclick.min.js"

    raw [[<meta name="viewport" content="ya-title=white,ya-dock=#000000" />]]
    meta name: "viewport", content: "ya-title=#FFCCE6,ya-dock=#FFCCE6"

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
            --li ->
              --a href: "/projects", "Projects"

            li ->
              a href: "/static/resume/index.html", "Resume"

          ul class: "nav navbar-nav navbar-right", ->
            li ->
              a href: "/contact", "Contact"

  footer: =>
    footer class: "footer", ->
      div class: "container", ->
        text "Christine Cadence Dodrill - #{os.date "%Y"}"

        if os.getenv "GIT_REV"
          text " revision #{os.getenv("GIT_REV")\sub 1,8}"

  body: =>
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
