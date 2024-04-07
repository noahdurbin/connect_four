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

    def prompt_player
      print "Select a column A - G: "
      gets.chomp
    end
    
end