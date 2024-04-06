class Game
    attr_accessor :board, :computer, :player
    def initialize
        @board = Board.new
        @computer = Computer.new(@board)
        @player = Player.new(@board)
    end

    def computer_turn(game)
        game.computer.place_piece(game.computer.random_column)
    end
end