require_relative 'character.rb'
require_relative 'game.rb'

wins = 100.times.map {Game.new.play}
counts = Hash.new 0

wins.each { |word| counts[word] += 1 }
puts counts.inspect
