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
        print "Do you want to Play? Press 'Y' to play."
          if gets.chomp == "Y"
            #Conditional while/until loop
            #Winning matches ||
            valid_input = @player.input_validation(gets.chomp)
            @player.place_piece(valid_input) #play X
            computer_input = computer.random_column
            @computer.place_piece(computer_input) # play O
            print @board.display_board

            valid_input = @player.input_validation(gets.chomp)
            @player.place_piece(valid_input) #play X
            computer_input = computer.random_column
            @computer.place_piece(computer_input) # play O
            print @board.display_board
            
            valid_input = @player.input_validation(gets.chomp)
            @player.place_piece(valid_input) #play X
            computer_input = computer.random_column
            @computer.place_piece(computer_input) # play O
            print @board.display_board

            valid_input = @player.input_validation(gets.chomp)
            @player.place_piece(valid_input) #play X
            computer_input = computer.random_column
            @computer.place_piece(computer_input) # play O
            print @board.display_board
          else
          end
        
    end  
end