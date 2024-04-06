class Board
  attr_reader :a1, :a2, :a3, :a4, :a5, :a6,
              :b1, :b2, :b3, :b4, :b5, :b6, 
              :c1, :c2, :c3, :c4, :c5, :c6, 
              :d1, :d2, :d3, :d4, :d5, :d6, 
              :e1, :e2, :e3, :e4, :e5, :e6, 
              :f1, :f2, :f3, :f4, :f5, :f6, 
              :g1, :g2, :g3, :g4, :g5, :g6,
              :a_column, :b_column, :c_column,
              :d_column, :e_column, :f_column,
              :g_column

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
      @a_column = [@a6, @a5, @a4, @a3, @a2, @a1]
      @b_column = [@b6, @b5, @b4, @b3, @b2, @b1]
      @c_column = [@c6, @c5, @c4, @c3, @c2, @c1]
      @d_column = [@d6, @d5, @d4, @d3, @d2, @d1]
      @e_column = [@e6, @e5, @e4, @e3, @e2, @e1]
      @f_column = [@f6, @f5, @f4, @f3, @f2, @f1]
      @g_column = [@g6, @g5, @g4, @g3, @g2, @g1]
  end

  def display_board
    a1.render + b1.render + c1.render + d1.render + e1.render + f1.render + g1.render + "\n" +
    a2.render + b2.render + c2.render + d2.render + e2.render + f2.render + g2.render + "\n" +
    a3.render + b3.render + c3.render + d3.render + e3.render + f3.render + g3.render + "\n" +
    a4.render + b4.render + c4.render + d4.render + e4.render + f4.render + g4.render + "\n" +
    a5.render + b5.render + c5.render + d5.render + e5.render + f5.render + g5.render + "\n" +
    a6.render + b6.render + c6.render + d6.render + e6.render + f6.render + g6.render
  end

  # def choose_piece(column)
  #   if column == "A"
  #     @a_column.find do |cell|
  #       cell.change_state
  #     end
  #   elsif column == "B"
  #     @b_column.find do |cell|
  #       cell.change_state
  #     end
  #   elsif column == "C"
  #     @c_column.find do |cell|
  #       cell.change_state
  #     end
  #   elsif column == "D"
  #     @d_column.find do |cell|
  #       cell.change_state
  #     end
  #   elsif column == "E"
  #     @e_column.find do |cell|
  #       cell.change_state
  #     end
  #   elsif column == "F"
  #     @f_column.find do |cell|
  #       cell.change_state
  #     end
  #   elsif column == "G"
  #     @g_column.find do |cell|
  #       cell.change_state
  #     end
  #   else
  #     "Invalid Input"
  #     #run the get input method again
  #   end
  # end
end