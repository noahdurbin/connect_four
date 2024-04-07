class Computer

  def initialize(board)
      @board = board
  end

  def random_column
      ["A", "B", "C", "D", "E", "F", "G"].sample
  end

  def place_piece(column)
    if column == "A" 
      @board.a_column.find do |cell|
        cell.change_state("O")
      end
    elsif column == "B"
      @board.b_column.find do |cell|
        cell.change_state("O")
      end
    elsif column == "C"
      @board.c_column.find do |cell|
        cell.change_state("O")
      end
    elsif column == "D"
      @board.d_column.find do |cell|
        cell.change_state("O")
      end
    elsif column == "E"
      @board.e_column.find do |cell|
        cell.change_state("O")
      end
    elsif column == "F"
      @board.f_column.find do |cell|
        cell.change_state("O")
      end
    elsif column == "G"
      @board.g_column.find do |cell|
        cell.change_state("O")
      end
    else
      nil
    end
  end
end
