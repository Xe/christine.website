import Widget from require "lapis.html"

class OlegView extends Widget
  content: =>
    h1 "Cache view"

    h4 "#{@params.table} -> #{@params.key}"

    pre @value

    div class: "row", ->
      div class: "col-md-3", ->
        img src: "/static/img/cacheview/olegdb.svg"
      div class: "col-md-9", ->
        p "Powered by OlegDB with pride"
