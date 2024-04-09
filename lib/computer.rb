class Computer

  def initialize(board)
      @board = board
  end

  def random_column
      ["A", "B", "C", "D", "E", "F", "G"].sample
  end

  def place_piece(column)
    if  
      @a_column = [@b6, @b5, @b4, @b3, @b2, @b1] && 
      @c_column = [@c6, @c5, @c4, @c3, @c2, @c1] && 
      @d_column = [@d6, @d5, @d4, @d3, @d2, @d1] && 
      @e_column = [@e6, @e5, @e4, @e3, @e2, @e1] && 
      @f_column = [@f6, @f5, @f4, @f3, @f2, @f1] && 
      @g_column = [@g6, @g5, @g4, @g3, @g2, @g1]
    if column == "A" && @board.a_column.include?(".")
      @board.a_column.find do |cell|
        cell.change_state("O")
      end
    elsif column == "B" && @board.b_column.state.include?(".")
      @board.b_column.find do |cell|
        cell.change_state("O")
      end
    elsif column == "C" && @board.c_column.include?(".")
      @board.c_column.find do |cell|
        cell.change_state("O")
      end
    elsif column == "D" && @board.d_column.include?(".")
      @board.d_column.find do |cell|
        cell.change_state("O")
      end
    elsif column == "E" && @board.e_column.include?(".")
      @board.e_column.find do |cell|
        cell.change_state("O")
      end
    elsif column == "F" && @board.f_column.include?(".")
      @board.f_column.find do |cell|
        cell.change_state("O")
      end
    elsif column == "G" && @board.g_column.include?(".")
      @board.g_column.find do |cell|
        cell.change_state("O")
      end
    else
      print "Kats Game."
    end
  end
end
