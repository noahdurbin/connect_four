require 'spec_helper'

RSpec describe Board do
    
    before do 
        @board_1 = Board.new
    end

    it 'is an instance of the board class' do
        expect(@board_1).to be_a(Board)
    end

    it 'initializes with 42 cells' do
        expect(@board_1.cell_count).to eq(42)
    end

    it 'only contains unplayed cells' do
        expect(@board_1.cells.status).to all eq(".")
    end
end