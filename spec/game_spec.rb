require 'spec_helper'

RSpec.describe Game do
    it "initializes" do
        game_1 = Game.new
        
        expect(game_1).to be_a(Game)
    end

    it "can determine if there is a winner" do
        game_1 = Game.new
        game.player.place_piece("A")
        game.player.place_piece("B")
        game.player.place_piece("C")
        game.player.place_piece("D")

        expect(game.check_horizontals).to eq("player wins")    
    end
end