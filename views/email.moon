import Widget from require "lapis.html"

class Email extends Widget
  content: =>
    link rel: "stylesheet", href: "/static/css/hire/main.css"

    h1 "Leave Me A Message"

    div class: "ccd-login-form", ->
      form class: "form-signin", method: "POST", action: "/contact/email", ->
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

        input type: "submit", name: "submit", id: "submit", value: "Submit", class: "btn btn-info"
