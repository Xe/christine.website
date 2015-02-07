config = require "lapis.config"

config "docker", ->
  port os.getenv "PORT"

  oleg ->
    host "127.0.0.1"
    port 38080
