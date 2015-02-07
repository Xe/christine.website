import Widget from require "lapis.html"

class Portfolio extends Widget
  content: =>
    link rel: "stylesheet", href: "/static/css/portfolio/main.css"

    center ->
      h1 "Projects I've Made"

    div class: "row", ->
      div class: "col-xs-12 col-sm-6 col-md-6 col-lg-6", ->
        div class: "box", ->
          div class: "box-icon", ->
            center ->
              img src: "/static/img/projects/flitter.png", width: 70, height: 70, style: "position: relative; top: 50%; transform: translateY(12%);"

          div class: "info", ->
            h4 class: "text-center", "Flitter"
            p "Flitter is an experimental platform-as-a-service implementation from scratch in Go. It uses mostly handrolled tools and Vulcand for HTTP proxying to applications. It is currently not being maintained but it is able to deploy applications with a Dockerfile via a heroku-style git push."
            a href: "/projects/flitter", class: "btn", "Learn More"

      div class: "col-xs-12 col-sm-6 col-md-6 col-lg-6", ->
        div class: "box", ->
          div class: "box-icon", ->
            span class: "fa fa-4x fa-server"

          div class: "info", ->
            h4 class: "text-center", "Scalable Deployment on Docker"
            p ->
              text "This site and a few others I host are deployed inside Docker containers and are updated using "
              code "git push"
              text ". The code for this site is available to the public at the link below. This is a simple Lapis application inside nginx and deployed using my docker-lapis image."
            a href: "http://github.com/Xe/christine.website", class: "btn", "Learn More"

      div class: "col-xs-12 col-sm-6 col-md-6 col-lg-6", ->
        div class: "box", ->
          div class: "box-icon", ->
            center ->
              img src: "/static/img/projects/cod.png", width: 70, height: 70, style: "position: relative; top: 50%; transform: translateY(25%);"

          div class: "info", ->
            h4 class: "text-center", "Cod"
            p "Cod is an opinionated set of extended services for IRC networks. It's written from scratch in Python and currently is in active use on a network with over 250 users daily. It works with any Charybdis family IRC daemon but will work best with Elemental-IRCd."
            a href: "https://github.com/cod-services/cod", class: "btn", "Learn More"

      div class: "col-xs-12 col-sm-6 col-md-6 col-lg-6", ->
        div class: "box", ->
          div class: "box-icon", ->
            center ->
              img src: "/static/img/projects/tetra.png", width: 70, height: 70, style: "position: relative; top: 50%; transform: translateY(25%);"

          div class: "info", ->
            h4 class: "text-center", "Tetra"
            p "Tetra is the successor to Cod. It is rewritten from the ground up with the core in Go and all plugins in either Moonscript or Lua. It is in development but master is considered stable. Any active development that could break things is done in feature branches that will PR to master."
            a href: "/projects/Tetra", class: "btn", "Learn More"

      div class: "col-xs-12 col-sm-6 col-md-6 col-lg-6", ->
        div class: "box", ->
          div class: "box-icon", ->
            span class: "fa fa-4x fa-code"

          div class: "info", ->
            h4 class: "text-center", "Elemental-IRCd"
            p "Elemental-IRCd is a fork of the (now defunct) ShadowIRCd project. It is also a fork of Atheme's Charybdis irc daemon with more user-friendly features. Most of these things are security patches, network staff usability features, patches that make centralized management simpler and extra status levels in channels; but the resulting core changes mean it needs to be its own project. I plan to replace this with something still in development called Scylla. On average there are right now over 800 people using this software to communicate."
            a href: "https://github.com/elemental-ircd/elemental-ircd", class: "btn", "Learn More"

      div class: "col-xs-12 col-sm-6 col-md-6 col-lg-6", ->
        div class: "box", ->
          div class: "box-icon", ->
            span class: "fa fa-4x fa-cogs"

          div class: "info", ->
            h4 class: "text-center", "Scylla"
            p "Scylla is a more experimental project in separating mechanism from policy in IRC networks. The overall idea is to make the flow of things similar to this:"
            code [[protocol line >>= mechanism >>= event >>= core >>= policy >>= action >>= mechanism >>= protocol line]]
            p "This would be implemented by the core being a minimal message bus that routes things to the appropriate component, allowing the components to be written in any language. It is still in the early planning stage but I hope to have something working by next year."
            a href: "https://github.com/Xe/scylla", class: "btn", "Learn More"
