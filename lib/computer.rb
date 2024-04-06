class Computer

    attr_reader :choice

    def initialize
        @choice = "F"
    end

    def random_piece
        choices = ["A", "B", "C", "D", "E", "F", "G"]
        @choice = choices.sample
    end

    def place_piece(column)
        if column == "A"
          @a_column.find do |cell|
            cell.change_state("O")
          end
        elsif column == "B"
          @b_column.find do |cell|
            cell.change_state("O")
          end
        elsif column == "C"
          @c_column.find do |cell|
            cell.change_state("O")
          end
        elsif column == "D"
          @d_column.find do |cell|
            cell.change_state("O")
          end
        elsif column == "E"
          @e_column.find do |cell|
            cell.change_state("O")
          end
        elsif column == "F"
          @f_column.find do |cell|
            cell.change_state("O")
          end
        elsif column == "G"
          @g_column.find do |cell|
            cell.change_state("O")
          end
        else
          "Invalid Input"
          #run the get input method again
        end
      end
end