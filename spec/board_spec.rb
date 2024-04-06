require 'spec_helper'

RSpec.describe Board do
    
    before do 
        @board_1 = Board.new
    end

    it 'is an instance of the board class' do
        expect(@board_1).to be_a(Board)
    end
end