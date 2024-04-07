require_relative './board.rb'
require_relative './cell.rb'
require_relative './computer.rb'
require_relative './player.rb'
require_relative './game.rb'
require 'pry'

# print "=================================" + "\n" 
# print "        Play Connect IV " + "\n" 
# print "=================================" + "\n"
# print "ABCDEFG" + "\n"

game = Game.new
game.start_game
# binding.pry
#print @board.display_board
player_input = game.prompt_player
game.player.place_piece(player_input) #play X
computer_input = game.computer.random_column
game.computer.place_piece(computer_input) # play O

game.next_round

player_input2 = game.prompt_player