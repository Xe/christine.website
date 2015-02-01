import Widget from require "lapis.html"

class Projects extends Widget
  content: =>
    h1 "My Projects"

    element "table" class: "table table-striped", ->
      tr ->
        td "Name"
        td "Description"
        td "Language"
        td "Star Count"

      for _, repo in pairs @repos
        tr ->
          td ->
            a href: repo.html_url, repo.name
          td repo.description or ""
          td repo.language
          td repo.stargazers_count
