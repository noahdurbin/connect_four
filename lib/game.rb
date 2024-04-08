class Game

    attr_reader :board, :computer, :player

    def initialize
        @board = Board.new
        @computer = Computer.new(@board)
        @player = Player.new(@board)
    end

    def start_game
        print "=================================" + "\n" 
        print "        Play Connect IV " + "\n" 
        print "=================================" + "\n"
        # print "ABCDEFG" + "\n"
        print @board.display_board
    end

    def next_round
      print @board.display_board
    end

    # def input_validation(input)
    #   if  input == "A" || input == "B" || 
    #       input == "C" || input == "D" || 
    #       input == "E" || input == "F" || 
    #       input == "G"
    #     return input
    #   else
    #     print "Invalid selection."
    # end


    
end