require 'spec_helper'

RSpec.describe Game do
    it "initializes" do
        game_1 = Game.new
        
        expect(game_1).to be_a(Game)
    end
end