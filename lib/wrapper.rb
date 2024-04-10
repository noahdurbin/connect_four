class Wrapper 

  def game_loop
    heading
    answer = gets.chomp
    if answer == "Y"
      while answer == "Y"
        system("clear")
        # print @board.display_board
        Game.new.gameplay
        puts "would you like to play again?"
        answer = gets.chomp
      end
    end
    game_end
  end

  def game_end
    print "See you next time!"
    system("exit")
  end

  def heading
    system("clear")
    print "=================================" + "\n" 
    print "        Play Connect IV " + "\n" 
    print "=================================" + "\n"
    puts "==== would you like to play? ===="
    print " type 'Y' for yes or 'N' for no" + "\n"
  end
end