import Widget from require "lapis.html"

class Readme extends Widget
  content: =>
    div class: "row", ->
      div class: "col-md-3", ->
        p class: "lead", ->
          text "Find out more at "
          a href: "https://github.com/Xe/#{@name}", "Github"
          text "."
      div class: "col-md-9", ->
        raw @doc

