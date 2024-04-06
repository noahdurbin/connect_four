require 'spec_helper'

RSpec.describe Board do
    
    before do 
        @board_1 = Board.new
    end

    it 'is an instance of the board class' do
        expect(@board_1).to be_a(Board)
    end

    it 'chooses the lowest cell in a column' do
        @board_1.choose_piece("A")
        expect(@board_1.a6.state).to eq("X")

        @board_1.choose_piece("A")
        @board_1.choose_piece("A")

        expect(@board_1.a4.state).to eq("X")
        expect(@board_1.a3.state).to eq(".")
    end
end