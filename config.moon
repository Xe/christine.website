config = require "lapis.config"

config "docker", ->
  port os.getenv "PORT"

  oleg ->
    host os.getenv "OLEG_PORT_38080_TCP_ADDR"
    port os.getenv "OLEG_PORT_38080_TCP_PORT"
