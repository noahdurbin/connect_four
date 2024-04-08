require 'spec_helper'

RSpec.describe Game do
    it "initializes" do
        game_1 = Game.new
        
        expect(game_1).to be_a(Game)
    end

    it "can determine if there is a winner" do
        game = Game.new
        game.player.place_piece("A")
        game.player.place_piece("A")
        game.player.place_piece("A")
        game.player.place_piece("A")

        expect(game.check_columns).to eq("player wins")    
    end
end