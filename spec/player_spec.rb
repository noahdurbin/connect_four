require 'spec_helper'

RSpec.describe Cell do

  it 'can initialize' do
    board = Board.new
    player = Player.new(board)
    
    expect(player).to be_a(Player)
  end







end