class Player

  def initialize(board)
    @board = board
  end

  def place_piece(column)
    if column == "A"
      @board.a_column.find do |cell|
        cell.change_state("X")
      end
    elsif column == "B"
      @board.b_column.find do |cell|
        cell.change_state("X")
      end
    elsif column == "C"
      @board.c_column.find do |cell|
        cell.change_state("X")
      end
    elsif column == "D"
      @board.d_column.find do |cell|
        cell.change_state("X")
      end
    elsif column == "E"
      @board.e_column.find do |cell|
        cell.change_state("X")
      end
    elsif column == "F"
      @board.f_column.find do |cell|
        cell.change_state("X")
      end
    elsif column == "G"
      @board.g_column.find do |cell|
        cell.change_state("X")
      end
    else
      "Invalid Input"
    end
  end
end