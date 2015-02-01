import Widget from require "lapis.html"

class UserInfo extends Widget
  content: =>
    center ->
      h1 "Oops!"

      p "Page not found!"

      raw [[<iframe src="http://notfound-static.fwebservices.be/404/index.html?&amp;key=aa8cb80927572af1e15ba844e70b211d" width="100%" height="650" frameborder="0"></iframe>]]
