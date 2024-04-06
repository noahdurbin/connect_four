require './board.rb'
require './cell.rb'
require './computer.rb'
require './game.rb'
require 'pry'

print "=================================" + "\n" 
print "        Play Connect IV " + "\n" 
print "=================================" + "\n"
print "ABCDEFG" + "\n"

board = Board.new
binding.pry
print board.display_board

player.place_piece(gets.chomp)