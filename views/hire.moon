import Widget from require "lapis.html"

class Hire extends Widget
  content: =>
    link rel: "stylesheet", href: "/static/css/hire/main.css"

    div class: "ccd-login-form", ->
      form class: "form-signin", method: "POST", action: "/hire", ->
        input type: "hidden", name: "csrf_token", value: @csrf_token

        div class: "form-group", ->
          label for: "name", "Your Name"
          div class: "input-group", ->
            input type: "text", class: "form-control", name: "name", id: "name", placeholder: "Enter Name", :required

        div class: "form-group", ->
          label for: "email", "Your Email Address"
          div class: "input-group", ->
            input type: "email", class: "form-control", name: "email", id: "email", placeholder: "Enter Email Address", :required

        div class: "form-group", ->
          label for: "name", "Message"
          div class: "input-group", ->
            textarea type: "text", class: "form-control", name: "message", id: "message", rows: 5, :required

        raw [[<input type="submit" name="submit" id="submit" value="Submit" class="btn btn-info">]]
