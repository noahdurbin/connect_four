require 'spec_helper'

RSpec.describe Board do
    
    before do 
        @board_1 = Board.new
    end

    it 'is an instance of the board class' do
        expect(@board_1).to be_a(Board)
    end

    it 'chooses the lowest cell in a column' do
        choose_piece("A")
        expect(A6.state).to eq("X")
    end
end