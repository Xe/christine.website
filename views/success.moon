import Widget from require "lapis.html"

class Success extends Widget
  content: =>
    center ->
      h1 "Thanks!"

      p class: "lead", "Thanks for getting in touch! I'll get back with you as soon as I can."
