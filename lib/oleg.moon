config = require("lapis.config").get!
http   = require "lapis.nginx.http"

request = (method, table, key, value=nil) ->
  oleg_res, code = http.simple {
    url:    "http://#{config.oleg.host}:#{config.oleg.port}/#{table}/#{key}"
    method: method
    body:   value
  }

  if code ~= 200
    return nil, code

  if not oleg_res
    return nil, 404

  oleg_res, nil

ret = {}

ret.get = (table, key) ->
  request "GET", table, key

ret.delete = (table, key) ->
  request "DELETE"

ret.set = (table, key, value) ->
  request "POST", table, key, value

ret
