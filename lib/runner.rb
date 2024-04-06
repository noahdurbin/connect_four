require './board.rb'
require './cell.rb'
require 'pry'

print "=================================" + "\n" 
print "        Play Connect IV " + "\n" 
print "=================================" + "\n"
print "ABCDEFG" + "\n"

board = Board.new

print board.display_board
