config   = require("lapis.config").get!
discount = require "discount"
lapis    = require "lapis"
http     = require "lapis.nginx.http"
oleg     = require "lib/oleg"

require "base64"

gh = require('github').new({access_token: os.getenv "GITHUB_TOKEN", httpclient_driver: 'httpclient.ngx_driver'})

class Projects extends lapis.Application
  [projects: "/projects"]: =>
    @title = "Projects"
    render: true

  [readme: "/projects/:name"]: =>
    @title = "Readme for #{@params.name}"
    @ret, @err = oleg.get "readmes", @params.name

    if @err
      ngx.log ngx.NOTICE, "Need to download readme for #{@params.name}"

      reply, err = gh\authed_request "/repos/Xe/#{@params.name}/contents/README.md"
      readme = base64.decode reply.content

      if code == 404
        return render: "notfound", status_code: 404

      oleg.set "readmes", @params.name, readme
      @ret = readme

    elseif @err
      @err = "OlegDB returned code #{@err}."
      return render: "error", status_code: 500

    @doc = discount @ret, "toc", "nopants", "autolink"

    render: true
