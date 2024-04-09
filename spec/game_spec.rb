require 'spec_helper'

RSpec.describe Game do
    it "initializes" do
      game = Game.new
        
      expect(game).to be_a(Game)
    end

    it "can determine if the player won is a winner" do
        game = Game.new
        game.player.place_piece("A")
        game.player.place_piece("A")
        game.player.place_piece("A")
        game.player.place_piece("A")

        expect(game.check_for_winner).to eq("Game Over Player Wins")    
    end

    it 'can tell if the computer won the game' do 
        game = Game.new
        game.computer.place_piece("B")
        game.computer.place_piece("B")
        game.computer.place_piece("B")
        game.computer.place_piece("B")

        expect(game.check_for_winner).to eq("Game Over Computer Wins")
    end

    it 'can check for a horizontal win' do 
        game = Game.new
        game.computer.place_piece("A")
        game.computer.place_piece("B")
        game.computer.place_piece("C")
        game.computer.place_piece("D")

        expect(game.check_for_winner).to eq("Game Over Computer Wins")
    end

    it 'can check for a diagonal win' do
        game = Game.new
        game.player.place_piece("A")
        game.player.place_piece("B")
        game.player.place_piece("B")
        game.player.place_piece("C")
        game.player.place_piece("C")
        game.player.place_piece("C")
        game.computer.place_piece("D")
        game.computer.place_piece("D")
        game.player.place_piece("D")
        game.player.place_piece("D")

        expect(game.check_for_winner).to eq("Game Over Player Wins")
    end

    
end