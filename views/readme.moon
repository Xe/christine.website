import Widget from require "lapis.html"

class Readme extends Widget
  content: =>
    div class: "row", ->
      div class: "col-md-3", ->
        p class: "lead", ->
          text "Find out more at "
          a href: "https://github.com/Xe/#{@name}", "Github"
          text "."
        hr!
        h3 "Project information"
        table ->
          tr ->
            td p "Language"
            td p "Line count"
          for name, count in pairs @languages
            tr ->
              td p name
              td p count

      div class: "col-md-9", ->
        raw @doc

