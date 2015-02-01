import Widget from require "lapis.html"

class About extends Widget
  content: =>
    link rel: "stylesheet", href: "/static/css/about/main.css"

    img class: "textwrap-right", src: @user.avatar_url

    p ->
      text "I am a GitHub power user. As of right now, I have #{@user.public_repos} open source projects tracked on GitHub. I have #{@user.followers} followers and am following #{@user.following} users."
