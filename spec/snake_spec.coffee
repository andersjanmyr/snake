util = require 'util'
Snake = require '../app/snake'

util.debug util.inspect(typeof Snake)

describe 'Snake', ->

  it 'should have a name', ->
    snake = new Snake 'Kaa'
    expect(snake.name).toEqual('Kaa')

