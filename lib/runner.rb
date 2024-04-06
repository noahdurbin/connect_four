require './board.rb'
require './cell.rb'
require './computer.rb'
require './player.rb'
require './game.rb'
require 'pry'

print "=================================" + "\n" 
print "        Play Connect IV " + "\n" 
print "=================================" + "\n"
print "ABCDEFG" + "\n"

game = Game.new
binding.pry
print board.display_board

player.place_piece(gets.chomp)