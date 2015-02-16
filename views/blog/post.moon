import Widget from require "lapis.html"

class Post extends Widget
  content: =>
    link rel: "stylesheet", href: "/static/css/blog/post.css"

    center ->
      h1 @title
    div class: "post", ->
      raw @doc
