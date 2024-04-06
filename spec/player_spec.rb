require 'spec_helper'

RSpec.describe Cell do

  it 'can initialize' do
    board = Board.new
    player = Player.new(board)
    
    expected(player).to be_a(Player)
  end

  





end