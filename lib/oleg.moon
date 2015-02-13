config = require("lapis.config").get!
http   = require "lapis.nginx.http"

request = (method, table, key, value=nil, headers={}) ->
  oleg_res, code = http.simple {
    url:     "http://#{config.oleg.host}:#{config.oleg.port}/#{table}/#{key}"
    method:  method
    body:    value
    headers: headers
  }

  if code ~= 200
    return nil, code

  if not oleg_res
    return nil, 404

  oleg_res, nil

ret = {}

ret.request = request

--- get gets a key from a table and returns the data and either nil or a error message
ret.get = (tab, key) ->
  request "GET", tab, key

--- delete deltes key from tab
ret.delete = (tab, key) ->
  request "DELETE", tab, key

--- set sets key in tab to value
ret.set = (tab, key, value) ->
  request "POST", tab, key, value

--- cache gets a key from tab, optionally running the getter function if key is not in tab
ret.cache = (tab, key, getter) ->
  data, err = ret.get tab, key

  if err
    ngx.log ngx.NOTICE, "Caching #{tab} #{key} to olegdb..."
    data = getter!
    ngx.log ngx.NOTICE, "done"
  data

ret
