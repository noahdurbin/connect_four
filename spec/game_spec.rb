require 'spec_helper'

RSpec.describe Game do
    it "initializes" do
      game_1 = Game.new
        
      expect(game_1).to be_a(Game)
    end

    

    

    # it "can place a piece" do
    #   game_1 = Game.new
    #   board = Board.new
    #   player = Player.new

    #   expect(game.player.place_piece("A")).to eq("X")
    # end
end