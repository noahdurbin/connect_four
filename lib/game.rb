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
        self.columns_into_strings.map do |column|
            if column.include?("xxxx")
                "player wins"
            elsif column.include("OOOO")
                "computer wins"
            else
                nil
            end
        end
    end
    
    def columns_into_strings
        columns = [@a_column, @b_column, @c_column, @d_column, @e_column, @f_column, @g_column]
        columns.map do |column|
            cell_states = []
            column.each do |cell|
                cell_states << cell.state
            end
            cell_states.map do |column|
                column.join("")
            end
        end
    end
end