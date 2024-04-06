require 'spec_helper'

RSpec.describe Game do
    it "initializes" do
        game = Game.new
        
        expect(game).to be_a(Game)
    end
end