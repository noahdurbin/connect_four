require 'spec_helper'

RSpec.describe Game do
    it "initializes" do
        game_1 = Game.new
        
        expect(game_1).to be_a(Game)
    end

    it "can determine if the player won is a winner" do
        game = Game.new
        game.player.place_piece("A")
        game.player.place_piece("A")
        game.player.place_piece("A")
        game.player.place_piece("A")

        expect(game.check_columns).to eq("Game Over Player Wins")    
    end

    it 'can tell if the computer won the game' do 
        game = Game.new
        game.computer.place_piece("B")
        game.computer.place_piece("B")
        game.computer.place_piece("B")
        game.computer.place_piece("B")

        expect(game.check_columns).to eq("Game Over Computer Wins")
    end
end