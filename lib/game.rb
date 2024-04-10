class Game
  attr_accessor :wins
  attr_reader :board, :computer, :player

  def initialize
    @board = Board.new
    @computer = Computer.new(@board)
    @player = Player.new(@board)
    @input = " "
    @wins = 0
  end

  def gameplay
    until wins > 0
      print @board.display_board
      print "Select a column A - G: "

      player_turn

      @player.flag = 0

      system("clear")
      print @board.display_board

      break if check_for_winner == true
      print "computer playing . . . "
      sleep 1.5
      computer_turn
      
      system("clear")
      check_for_winner
    end
  end

  def player_turn
    until @player.flag == 1
      @input = gets.chomp
      valid_input = @player.input_validation(@input)
      @player.place_piece(valid_input) #play X
    end
  end

  def computer_turn
    computer_input = computer.random_column
    computer.place_piece(computer_input) 
  end

  def arrays_into_strings(group_of_arrays)
    group_of_arrays.map do |column|
      cell_states = []
      column.each do |cell|
        cell_states.push(cell.state)
      end
      cell_states.join
    end
  end

  def check_grouping(group)
    group.each do |string|
      if string.include?("XXXX")
        puts "You Win!!!"
        sleep 1.5
        @wins += 1   
      elsif string.include?("OOOO") 
        puts "Computer wins!"
        sleep 1.5
        @wins += 1
      else
        nil
      end
    end
  end

  def check_for_winner
    check_grouping(arrays_into_strings(@board.all))
    if @wins == 1
      puts "-------- game Over --------"
      return true
    end
    false
  end
end