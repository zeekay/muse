assert  = require 'assert'
die     = require 'die'
zombie  = require 'zombie'
browser = new zombie.Browser
app = die.createServer()

describe 'muse', ->
  describe 'GET /', ->
    before (done) ->
      app.listen app.settings.port, ->
        browser.visit "http://localhost:#{app.settings.port}/", -> done()

    it 'has title', ->
      title = browser.text 'title'
      assert.equal title, 'muse'
