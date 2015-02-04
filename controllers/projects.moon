lapis = require "lapis"

class Projects extends lapis.Application
  [projects: "/projects"]: =>
    render: true
