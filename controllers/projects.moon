lapis = require "lapis"
http = require "lapis.nginx.http"
json = require "dkjson"

import respond_to from require "lapis.application"
import assert_valid from require "lapis.validate"

class Projects extends lapis.Application
  [portfolio: "/portfolio"]: =>

    render: true

