lapis = require "lapis"
http = require "lapis.nginx.http"
json = require "dkjson"

import respond_to from require "lapis.application"
import assert_valid from require "lapis.validate"

class Projects extends lapis.Application
  [projects: "/projects"]: =>
    res, code = http.simple {
      url: "https://api.github.com/users/Xe/repos"
      headers: {
        ["User-Agent"]: "http://christine.website #{os.getenv "GIT_REV"}"
        ["Authorization"]: "token #{os.getenv "GITHUB_TOKEN"}"
      }
    }

    if code != 200
      @err = res
      return render: "error", status: 500

    repos, _, err = json.decode res

    if err
      @err = err
      return render: "error", status: 500

    @repos = {}

    for _, repo in pairs(repos)
      if not repo.fork
        table.insert repos, repo

    render: true

  [portfolio: "/portfolio"]: =>

    render: true

