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
              :g_column, :row_1, :row_2, :row_3, 
              :row_4, :row_5, :row_6, :diagonal_1, 
              :diagonal_2, :diagonal_3, :diagonal_4,
              :diagonal_5, :diagonal_6, :diagonal_7,
              :diagonal_8, :diagonal_9, :diagonal_10, 
              :diagonal_11, :diagonal_12, :diagonals,
              :rows, :columns

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

      @row_1 = [@a1, @b1, @c1, @d1, @e1, @f1, @g1]
      @row_2 = [@a2, @b2, @c2, @d2, @e2, @f2, @g2]
      @row_3 = [@a3, @b3, @c3, @d3, @e3, @f3, @g3]
      @row_4 = [@a4, @b4, @c4, @d4, @e4, @f4, @g4]
      @row_5 = [@a5, @b5, @c5, @d5, @e5, @f5, @g5]
      @row_6 = [@a6, @b6, @c6, @d6, @e16, @f6, @g6]

      @diagonal_1 = [@a3, @b4, @c5, @d6]
      @diagonal_2 = [@a2, @b3, @c4, @d5, @e6]
      @diagonal_3 = [@a1, @b2, @c3, @d4, @e5, @f6]
      @diagonal_4 = [@b1, @c2, @d3, @e4, @f5, @g6]
      @diagonal_5 = [@c1, @d2, @e3, @f4, @g5]
      @diagonal_6 = [@d1, @e2, @f3, @g4]
      @diagonal_7 = [@a4, @b3, @c2, @d1]
      @diagonal_8 = [@a5, @b4, @c3, @d2, @e1]
      @diagonal_9 = [@a6, @b5, @c4, @d3, @e2, @f1]
      @diagonal_10 = [@b6, @c5, @d4, @e3, @f2, @g1]
      @diagonal_11 = [@c6, @d5, @e4, @f3, @g2]
      @diagonal_12 = [@d6, @e5, @f4, @g3]

      @columns = [@a_column, @b_column, @c_column, @d_column, @e_column, @f_column, @g_column]
      @rows = [@row_1, @row_2, @row_3, @row_4, @row_5, @row_6]
      @diagonals [@diagonal_1, @diagonal_2, @diagonal_3, @diagonal_4, @diagonal_5, @diagonal_6, @diagonal_7, @diagonal_8, @diagonal_9, @diagonal_10, @diagonal_11, @diagonal_12]
    end

  def display_board
    puts '            ABCDEFG' + "\n" +
    "           1" + a1.render + b1.render + c1.render + d1.render + e1.render + f1.render + g1.render + "\n" +
    "           2" + a2.render + b2.render + c2.render + d2.render + e2.render + f2.render + g2.render + "\n" +
    "           3" + a3.render + b3.render + c3.render + d3.render + e3.render + f3.render + g3.render + "\n" +
    "           4" + a4.render + b4.render + c4.render + d4.render + e4.render + f4.render + g4.render + "\n" +
    "           5" + a5.render + b5.render + c5.render + d5.render + e5.render + f5.render + g5.render + "\n" +
    "           6" + a6.render + b6.render + c6.render + d6.render + e6.render + f6.render + g6.render
  end
end