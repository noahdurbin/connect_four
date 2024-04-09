class Game
    attr_accessor :wins
    attr_reader :board, :computer, :player

    def initialize
        @board = Board.new
        @computer = Computer.new(@board)
        @player = Player.new(@board)
        @input = " "
        @wins = 0
        @winner = nil
    end

    def start_game
        print "=================================" + "\n" 
        print "        Play Connect IV " + "\n" 
        print "=================================" + "\n"
        print @board.display_board
        gameplay
    end
  
    def gameplay
      until @wins == 1
        print "Select a column A - G: "
        @input = gets.chomp
        valid_input = @player.input_validation(@input)
        @player.place_piece(valid_input) #play
        self.check_for_winner
        system("clear")
        print @board.display_board
        system("sleep 2")
        computer_input = computer.random_column
        @computer.place_piece(computer_input) # play O
        self.check_for_winner
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
          end_of_game("XXXX")        
      elsif string.include?("OOOO") 
      end_of_game("OOOO")
        else
            nil
        end
      end
    end

    def check_for_winner
      check_grouping(arrays_into_strings(@board.all))
      # if @winner == nil 
      #   nil
      # else
      #   print @winner
      # end
    end

    def end_of_game(winner_name)
      if winner_name == "XXXX"
        print "Computer Wins"
      else 
        print "Player Wins"
      end
    end
  end

