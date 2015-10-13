lapis = require "lapis"

import mock_request from require "lapis.spec.request"
import use_test_env from require "lapis.spec"

App = require "app"

describe "basic website", ->
  use_test_env!

  --it "should show the contact page", ->
  --  status, body = mock_request App, "/contact"

  --  assert.same 200, status
  --  assert.truthy body\match "GPG fingerprint"

  it "should show the fake error page", ->
    status = mock_request App, "/error"

    assert.same 500, status

  it "should 404 on a bad URL", ->
    status = mock_request App, "/asdfasdfasdfasdf"

    assert.same 404, status
