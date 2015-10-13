lapis = require "lapis"

import mock_request from require "lapis.spec.request"
import use_test_env from require "lapis.spec"

App = require "app"

describe "golang project linker", ->
  use_test_env!

  it "should expand `go get` requests properly", ->
    status, body = mock_request App, "/go/tools"

    assert.same 200, status
    assert.truthy body\match "github"
