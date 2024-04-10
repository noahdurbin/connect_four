class Computer
  attr_accessor :set

  def initialize(board)
      @board = board
      @set = ["A", "B", "C", "D", "E", "F", "G"]

  end

  def random_column
      @set.sample
  end

  def place_piece(column)
    if column == "A" && computer_check(@board.a_column) == true
      @board.a_column.find do |cell|
        cell.change_state("O")
      end
    elsif column == "B" && computer_check(@board.a_column) == true
      @board.b_column.find do |cell|
        cell.change_state("O")
      end
    elsif column == "C" && computer_check(@board.a_column) == true
      @board.c_column.find do |cell|
        cell.change_state("O")
      end
    elsif column == "D" && computer_check(@board.a_column) == true
      @board.d_column.find do |cell|
        cell.change_state("O")
      end
    elsif column == "E" && computer_check(@board.a_column) == true
      @board.e_column.find do |cell|
        cell.change_state("O")
      end
    elsif column == "F" && computer_check(@board.a_column) == true
      @board.f_column.find do |cell|
        cell.change_state("O")
      end
    elsif column == "G" && computer_check(@board.a_column) == true
      @board.g_column.find do |cell|
        cell.change_state("O")
      end
    elsif @set == []
      "cats game"
    else
      @set.delete(column)
    end
  end


  def computer_check(full_column)
    full_column.map do |column|
      cell_states = []
      full_column.each do |cell|
          cell_states.push(cell.state)
      end
      if cell_states.include?(".")
        return true
      else
        return false
      end
    end
  end
end