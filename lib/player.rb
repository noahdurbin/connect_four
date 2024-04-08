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
    else column == "G"
      @board.g_column.find do |cell|
        cell.change_state("X")
      end
    end
  end

  def prompt_player 
    print "Select a column A - G: "
    input = gets.chomp
  end

  def input_validation(input)
    if input == "A" || input == "B" || input == "C" || input == "D" || input == "E" || input == "F" || input == "G"
      return input
    else
      until input == "A" || input == "B" || 
            input == "C" || input == "D" || 
            input == "E" || input == "F" || 
            input == "G"
            print " Invalid Selection." + "\n"
            print "Select a column A - G: "
            input = gets.chomp
      end
    input
    end
  end
end