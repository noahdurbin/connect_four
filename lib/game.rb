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

    def start_game
      heading
      if gets.chomp == "Y"
        system("clear")
        print @board.display_board
        gameplay
      else
        system.exit
      end
    end

    def gameplay
      until wins == 1
        print "Select a column A - G: "

        until player.flag == 1
          @input = gets.chomp
          valid_input = @player.input_validation(@input)
          @player.place_piece(valid_input) #play X
        end

        system("clear")
        print @board.display_board

        check_for_winner
        print "computer playing . . . "
        sleep 1.5

        computer_input = computer.random_column
        @computer.place_piece(computer_input) # play O
        system("clear")
        print @board.display_board
      end
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
          @wins += 1        
        elsif string.include?("OOOO") 
          @wins += 1
        else
            nil
        end
      end
    end

    def check_for_winner
      check_grouping(arrays_into_strings(@board.all))
    end

    def heading
      system("clear")
      print "=================================" + "\n" 
      print "        Play Connect IV " + "\n" 
      print "=================================" + "\n"
      print @board.display_board
      print "would you like to play?"
      print "type 'Y' for yes or 'N' for no" + "\n"
    end
  end