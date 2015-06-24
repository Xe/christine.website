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
        element "table", ->
          tr ->
            td "Language"
            td "Percentage"
          for name, count in pairs @languages
            tr ->
              td name
              td count .. "%"

      div class: "col-md-9", ->
        raw @doc

