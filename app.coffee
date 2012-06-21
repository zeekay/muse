die = require('die')
  base: __dirname

app = die.createServer ->
  @set 'view options'
    layout: false

  @get '/', ->
    @render 'index'

module.exports = app
