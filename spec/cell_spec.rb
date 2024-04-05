require 'spec_helper'

RSpec describe Cell do

    it 'is a cell' do
        cell_1 = Cell.new
        expect(cell_1).to be_a(Cell)
    end

    it 'starts as an unplayed cell' do
        cell_1 = Cell.new
        expect(cell_1.state).to eq(:unplayed)
    end
end