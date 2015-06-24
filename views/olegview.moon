import Widget from require "lapis.html"

class OlegView extends Widget
  content: =>
    h1 "Cache view"

    h4 "#{@params.table} -> #{@params.key}"

    pre @value
