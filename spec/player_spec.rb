require 'spec_helper'

RSpec.describe Cell do

  it 'can initialize' do
    board = Board.new
    player = Player.new(board)
    
    expect(player).to be_a(Player)
  end

  it 'can place a piece on the board' do
    board = Board.new
    player = Player.new(board)
    player.place_piece("A")

    expect(board.a6.state).to eq("X")
  end

end