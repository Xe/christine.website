config = require "lapis.config"
config "development", ->
  port 8080

config "docker", ->
  port os.getenv "PORT"
