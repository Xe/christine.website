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
            h4 class: "text-center", "Scalable Deployment"
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
            p "Elemental-IRCd is a fork of the (now defunct) ShadowIRCd project. It is also a fork of Atheme's Charybdis irc daemon with more user-friendly features. Most of these things are security patches, network staff usability features, patches that make centralized management simpler and extra status levels in channels; but the resulting core changes mean it needs to be its own project."
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
            p "Glue is a small shim I needed to make in order to test some aspects of Tetra outside of the main environment. Its name comes from the fact that it needed to glue things together as well as the fact that it combines Go and Lua together."
            a href: "https://github.com/Xe/glue", class: "btn", "Learn More"

      div class: "col-xs-12 col-sm-6 col-md-6 col-lg-6", ->
        div class: "box", ->
          div class: "box-icon", ->
            center ->
              img src: "https://camo.githubusercontent.com/0842ae6eb213b4d95efc9f2137085bbbd8e52258/68747470733a2f2f692e696d6775722e636f6d2f4379337a4f6f772e706e67", width: 70, height: 70, style: "position: relative; top: 50%; transform: translateY(18%);"

          div class: "info", ->
            h4 class: "text-center", "Shuo"
            p ->
              text "Originally a fork of "
              a href: "https://github.com/erming/shout", "Shout"
              text ", Shuo is a stable and proven web interface to IRC. It has a server written in Node.JS and uses socket.io to communicate with the HTML5 client. It is pending a large scale rewrite with a backend in Haskell or Go."
            a href: "https://github.com/ponychat/shuo", class: "btn", "Learn More"

      div class: "col-xs-12 col-sm-6 col-md-6 col-lg-6", ->
        div class: "box", ->
          div class: "box-icon", ->
            center ->
              img src: "/static/img/projects/ponyapi.png", width: 70, height: 70, style: "position: relative; top: 50%; transform: translateY(18%);"

          div class: "info", ->
            h4 class: "text-center", "PonyAPI"
            p "A simple JSON api for information on episodes of My Little Pony: Friendship is Magic. It uses data scraped by hand over 4 years and presents as JSON via a server written in Nim. It also follows best practices for not breaking existing code when adding improvements."
            a href: "https://github.com/Xe/PonyAPI", class: "btn", "Learn More"

    h3 ->
      text "Web Portfolio"

    div class: "row", ->
      div class: "col-md-6", ->
        a href: "https://yolo-swag.com", ->
          img src: "http://api.webthumbnail.org/?width=420&height=330&screen=1280&url=https://yolo-swag.com"
      div class: "col-md-6", ->
        a href: "http://xeserv.us", ->
          img src: "http://api.webthumbnail.org/?width=420&height=330&screen=1280&url=http://xeserv.us"
      div class: "col-md-6", ->
        a href: "http://diddy-kong.racing", ->
          img src: "http://api.webthumbnail.org/?width=420&height=330&screen=1280&url=http://diddy-kong.racing"
      div class: "col-md-6", ->
        a href: "https://ponychat.net", ->
          img src: "http://api.webthumbnail.org/?width=420&height=330&screen=1280&url=https://ponychat.net"
      div class: "col-md-6", ->
        a href: "https://clop.science", ->
          img src: "http://api.webthumbnail.org/?width=420&height=330&screen=1280&url=https://clop.science"
      div class: "col-md-6", ->
        a href: "http://cinemaquestria.com", ->
          img src: "http://api.webthumbnail.org/?width=420&height=330&screen=1280&url=http://cinemaquestria.com"
      div class: "col-md-6", ->
        a href: "https://bnc.ponychat.net", ->
          img src: "http://api.webthumbnail.org/?width=420&height=330&screen=1280&url=https://bnc.ponychat.net"
      div class: "col-md-6", ->
        a href: "https://bnc-signup.ponychat.net", ->
          img src: "http://api.webthumbnail.org/?width=420&height=330&screen=1280&url=https://bnc-signup.ponychat.net"
