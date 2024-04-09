class Game

    attr_reader :board, :computer, :player

    def initialize
        @board = Board.new
        @computer = Computer.new(@board)
        @player = Player.new(@board)
        @input = " "
    end

    def start_game
        print "=================================" + "\n" 
        print "        Play Connect IV " + "\n" 
        print "=================================" + "\n"
        print @board.display_board
        print "Select a column A - G: "
          @input = gets.chomp
          valid_input = @player.input_validation(@input)
          @player.place_piece(valid_input) #play X
          computer_input = computer.random_column
          @computer.place_piece(computer_input) # play O
          print @board.display_board
            
          valid_input = @player.input_validation(gets.chomp)
          @player.place_piece(valid_input) #play X
          computer_input = computer.random_column
          computer_validation = @computer.place_piece(computer_input)
          print @board.display_board
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
                return "Game Over Player Wins"
            elsif string.include?("OOOO")
                return "Game Over Computer Wins"
            else
                nil
            end
        end
    end

    def check_for_winner
        self.check_grouping(arrays_into_strings(@board.all))
    end

    
  end




    # def check_columns
    #     self.columns_into_strings.find do |column|
    #         if column.include?("XXXX")
    #             return "Game Over Player Wins"
    #         elsif column.include?("OOOO")
    #             return "Game Over Computer Wins"
    #         end
    #     end
    # end
    
    # def columns_into_strings
    #     columns = [@board.a_column, @board.b_column, @board.c_column, @board.d_column, @board.e_column, @board.f_column, @board.g_column]
    #     columns.map do |column|
    #         cell_states = []
    #         column.each do |cell|
    #             cell_states << cell.state
    #         end
    #         cell_states.join
    #     end
    # end

   # -------------------------

      # def prompt_player
    #   input = " "
    #   until input == "A" || input == "B" || 
    #         input == "C" || input == "D" || 
    #         input == "E" || input == "F" || 
    #         input == "G"
    #     print "Select a column A - G: "
    #     input = gets.chomp
    #   end
    #   input
    # end