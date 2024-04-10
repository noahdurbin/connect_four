class Wrapper 

  def game_loop
    heading
    answer = gets.chomp
    if answer == "Y"
      while answer = "Y"
        system("clear")
        # print @board.display_board
        Game.new.gameplay
        puts "would you like to play again?"
        answer = gets.chomp
      end
    else
      print "See you next time!"
      system("exit")
    end
  end

  def heading
    system("clear")
    print "=================================" + "\n" 
    print "        Play Connect IV " + "\n" 
    print "=================================" + "\n"
    print "would you like to play?"
    print "type 'Y' for yes or 'N' for no" + "\n"
  end
end