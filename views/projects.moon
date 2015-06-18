import Widget from require "lapis.html"

class Portfolio extends Widget
  content: =>
    link rel: "stylesheet", href: "/static/css/portfolio/main.css"

    center ->
      h1 "Projects I've Worked On"

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
            span class: "fa fa-4x fa-music"

          div class: "info", ->
            h4 class: "text-center", "PonyvilleFM"
            p "PonyvilleFM is an online radio station with both live DJ's and a continuously shuffling set of playlists. My main contribution to them has been helping maintain and deploy their cross-network utility and relay IRC bot as well as help with research and development for future projects still in research and development phases."
            a href: "http://ponyvillefm.com", class: "btn", "Learn More"

      div class: "col-xs-12 col-sm-6 col-md-6 col-lg-6", ->
        div class: "box", ->
          div class: "box-icon", ->
            center ->
              img src: "/static/img/projects/glue.png", width: 70, height: 70, style: "position: relative; top: 50%; transform: translateY(18%);"

          div class: "info", ->
            h4 class: "text-center", "Glue"
            p "Glue is a small shim I needed to make in order to test some aspects of Tetra outside of the main environment. It will eventually be used in concert with Tetra's scripting engine to make a simple test suite for its modules. Its name comes from the fact that it needed to glue things together as well as the fact that it combines Go and Lua together."
            a href: "https://github.com/Xe/glue", class: "btn", "Learn More"

