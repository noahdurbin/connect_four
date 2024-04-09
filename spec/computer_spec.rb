require 'spec_helper'

RSpec.describe Computer do
    it 'can place a piece on the board' do
      game = Game.new
      board = Board.new
      computer = Computer.new(board)
      computer.place_piece("A")

      expect(board.a6.state).to eq("O")
    end

    it 'can determine when a column is full' do
        game = Game.new
        board = Board.new
        computer = Computer.new(board)
              
        computer.place_piece("A")
        computer.place_piece("A")
        computer.place_piece("A")
        computer.place_piece("A")
        computer.place_piece("A")
        computer.place_piece("A")
        computer.place_piece("A")
      
        expect(computer.set).to eq(["B", "C", "D", "E", "F", "G"])
      end

    it  'it can determine when two columns are full' do
      game = Game.new
        board = Board.new
        computer = Computer.new(board)
              
        computer.place_piece("A")
        computer.place_piece("A")
        computer.place_piece("A")
        computer.place_piece("A")
        computer.place_piece("A")
        computer.place_piece("A")
        computer.place_piece("A")

        computer.place_piece("B")
        computer.place_piece("B")
        computer.place_piece("B")
        computer.place_piece("B")
        computer.place_piece("B")
        computer.place_piece("B")
        computer.place_piece("B")

        expect(computer.set).to eq(["C", "D", "E", "F", "G"])
    end
end