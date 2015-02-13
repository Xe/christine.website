import Widget from require "lapis.html"

class Post extends Widget
  content: =>
    raw @doc
