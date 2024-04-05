class Board
attr_reader :a1, :a2, :a3, :a4, :a5, :a6

  def initialize
      @a1 = Cell.new({location: 'A1', state: "."})
      @a2 = Cell.new({location: 'A2', state: "."})
      @a3 = Cell.new({location: 'A3', state: "."})
      @a4 = Cell.new({location: 'A4', state: "."})
      @a5 = Cell.new({location: 'A5', state: "."})
      @a6 = Cell.new({location: 'A6', state: "."})
      @b1 = Cell.new({location: 'B1', state: "."})
      @b2 = Cell.new({location: 'B2', state: "."})
      @b3 = Cell.new({location: 'B3', state: "."})
      @b4 = Cell.new({location: 'B4', state: "."})
      @b5 = Cell.new({location: 'B5', state: "."})
      @b6 = Cell.new({location: 'B6', state: "."})
      @c1 = Cell.new({location: 'c1', state: "."})
      @c2 = Cell.new({location: 'c2', state: "."})
      @c3 = Cell.new({location: 'c3', state: "."})
      @c4 = Cell.new({location: 'c4', state: "."})
      @c5 = Cell.new({location: 'c5', state: "."})
      @c6 = Cell.new({location: 'c6', state: "."})
      @d1 = Cell.new({location: 'd1', state: "."})
      @d2 = Cell.new({location: 'd2', state: "."})
      @d3 = Cell.new({location: 'd3', state: "."})
      @d4 = Cell.new({location: 'd4', state: "."})
      @d5 = Cell.new({location: 'd5', state: "."})
      @d6 = Cell.new({location: 'd6', state: "."})
      @e1 = Cell.new({location: 'e1', state: "."})
      @e2 = Cell.new({location: 'e2', state: "."})
      @e3 = Cell.new({location: 'e3', state: "."})
      @e4 = Cell.new({location: 'e4', state: "."})
      @e5 = Cell.new({location: 'e5', state: "."})
      @e6 = Cell.new({location: 'e6', state: "."})
      @f1 = Cell.new({location: 'f1', state: "."})
      @f2 = Cell.new({location: 'f2', state: "."})
      @f3 = Cell.new({location: 'f3', state: "."})
      @f4 = Cell.new({location: 'f4', state: "."})
      @f5 = Cell.new({location: 'f5', state: "."})
      @f6 = Cell.new({location: 'f6', state: "."})
      @g1 = Cell.new({location: 'g1', state: "."})
      @g2 = Cell.new({location: 'g2', state: "."})
      @g3 = Cell.new({location: 'g3', state: "."})
      @g4 = Cell.new({location: 'g4', state: "."})
      @g5 = Cell.new({location: 'g5', state: "."})
      @g6 = Cell.new({location: 'g6', state: "."})
  end












  end



  # def cell_count
  #   @board.count
  # end

  
end