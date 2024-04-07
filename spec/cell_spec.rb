require 'spec_helper'

RSpec.describe Cell do

    it 'is a cell' do
        cell_1 = Cell.new({location: 'A1', state: "."}) 
        
        expect(cell_1).to be_a(Cell)
    end

    it 'starts as an unplayed cell' do
        cell_1 = Cell.new({location: 'A1', state: "."}) 

        expect(cell_1.state).to eq(".")
    end

    # I think we can delete this test?
    # covered in player_spec and computer_spec
    xit 'can change state to an X or O' do 
        cell_1 = Cell.new({location: 'A1', state: "."})
        cell_1.change_state

        expect(cell_1.state).to eq("X")
    end
end