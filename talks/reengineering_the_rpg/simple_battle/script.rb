require_relative 'character.rb'
require_relative 'game.rb'

game = Game.new
game.turn until game.over?
