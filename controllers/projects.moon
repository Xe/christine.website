config   = require("lapis.config").get!
discount = require "discount"
lapis    = require "lapis"
http     = require "lapis.nginx.http"
oleg     = require "lib/oleg"
dkjson   = require "dkjson"

require "base64"

gh = require('github').new({access_token: os.getenv "GITHUB_TOKEN", httpclient_driver: 'httpclient.ngx_driver'})

class Projects extends lapis.Application
  [projects: "/projects"]: =>
    @title = "Projects"
    @page = "projects"
    render: true

  [readme: "/projects/:name"]: =>
    @title = "Readme for #{@params.name}"
    @name = @params.name
    @page = "projects"

    languagelist = oleg.cache "languageinfo", @params.name, ->
      reply, err = gh\authed_request "/repos/Xe/#{@params.name}/languages"
      dkjson.encode reply

    languages = dkjson.decode languagelist

    total = with result = 0
      for _, count in pairs languages
        result += count

    @languages = with result = {}
      for name, count in pairs languages
        result[name] = (count/total)*100

    @doc = oleg.cache "readmes", @params.name, ->
      reply, err = gh\authed_request "/repos/Xe/#{@params.name}/contents/README.md"
      readme = base64.decode reply.content

      if code == 404
        return render: "notfound", status_code: 404

      discount readme, "toc", "nopants", "autolink"

    render: true
