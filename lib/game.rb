class Game
    attr_accessor :flag
    attr_reader :board, :computer, :player

    def initialize
        @board = Board.new
        @computer = Computer.new(@board)
        @player = Player.new(@board)
        @input = " "
        @flag = 0
    end

    def start_game
        print "=================================" + "\n" 
        print "        Play Connect IV " + "\n" 
        print "=================================" + "\n"
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




  # print "Select a column A - G: "
  #   until @flag == 1
  #     @input = gets.chomp
  #     valid_input = @player.input_validation(@input)
  #     @player.place_piece(valid_input) #play X
  #   end
  #   computer_input = computer.random_column
  #   @computer.place_piece(computer_input) # play O
  #   print @board.display_board
  # end