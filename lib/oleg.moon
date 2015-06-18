config = require("lapis.config").get!
http   = require "lapis.nginx.http"
util   = require "lapis.util"

--- request does the dirty work talking to olegdb for you
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
ret.set = (tab, key, value, expire) ->
  unless expire
    expire = os.time! + 18000 -- 6 hours

  headers = {}
  headers["X-OlegDB-use-by"] = expire

  request "POST", tab, key, value

--- cache gets a key from tab, optionally running the getter function if key is not in tab
ret.cache = (tab, key, getter) ->
  data, err = ret.get tab, key

  if err
    ngx.log ngx.NOTICE, "Caching #{tab} -> #{key} to olegdb"
    data = getter!
    ret.set tab, key, data
  data

--- pagecache should do magic to make page caching work automatically
ret.pagecache = (req) ->
  {
    get: (key) =>
      key = util.slugify key
      out, err = ret.get "pagecache", key

      if err
        return nil

      out

    set: (key, content, expire) =>
      key = util.slugify key
      ret.set "pagecache", key, content
  }

ret
