require 'spec_helper'

RSpec.describe Computer do
    it 'can place a piece on the board' do
        board = Board.new
        computer = Computer.new(board)
        computer.place_piece("A")
        
        expect(board.a6.state).to eq("O")
    end

    
end