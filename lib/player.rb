class Player
  attr_accessor :flag
  def initialize(board)
    @board = board
    @flag = 0
  end

  def place_piece(column)
    if column == "A" && player_check(@board.a_column) == true
      @flag += 1
      @board.a_column.find do |cell|
        cell.change_state("X")
      end
    elsif column == "B" && player_check(@board.b_column) == true
      @flag += 1
      @board.b_column.find do |cell|
        cell.change_state("X")
      end
    elsif column == "C" && player_check(@board.c_column) == true
      @flag += 1
      @board.c_column.find do |cell|
        cell.change_state("X")
      end
    elsif column == "D" && player_check(@board.d_column) == true
      @flag += 1
      @board.d_column.find do |cell|
        cell.change_state("X")
      end
    elsif column == "E" && player_check(@board.e_column) == true
      @flag += 1
      @board.e_column.find do |cell|
        cell.change_state("X")
      end
    elsif column == "F" && player_check(@board.f_column) == true
      @flag += 1
      @board.f_column.find do |cell|
        cell.change_state("X")
      end
    elsif column == "G" && player_check(@board.g_column) == true
      @flag += 1
      @board.g_column.find do |cell|
        cell.change_state("X")
      end
    else
      return false
    end
  end

  def player_check(full_column)
    cell_states = []
    full_column.map do |cell|
      cell_states.push(cell.state)
    end
      if cell_states.include?(".")
        return true
      else
        print "Column full. Make another selection: "
        return false
      end
  end

  def input_validation(input) #look at Range
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