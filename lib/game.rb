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

    def prompt_player
      input = " "
      until input == "A" || input == "B" || 
            input == "C" || input == "D" || 
            input == "E" || input == "F" || 
            input == "G"
        print "Select a column A - G: "
        input = gets.chomp
      end
      input
    end

    def check_columns
        self.columns_into_strings.find do |column|
            if column.include?("XXXX")
                return "Game Over Player Wins"
            elsif column.include?("OOOO")
                return "Game Over Computer Wins"
            end
        end
    end
    
    def columns_into_strings
        columns = [@board.a_column, @board.b_column, @board.c_column, @board.d_column, @board.e_column, @board.f_column, @board.g_column]
        columns.map do |column|
            cell_states = []
            column.each do |cell|
                cell_states << cell.state
            end
            cell_states.join
        end
    end
end