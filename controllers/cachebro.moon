lapis = require "lapis"
oleg = require "lib/oleg"

class CacheBro extends lapis.Application
  [olegview: "/cache/:table/:key"]: =>
    @value, @err = oleg.get @params.table, @params.key

    @title = "Cache view: " .. @params.table .. " -> " .. @params.key

    if @err ~= nil
      return render: "error", status: 404

    render: true
