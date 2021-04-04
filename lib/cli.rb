class CLI

    def start
        puts "**********Welcome to TIC TAC TOE**********"
        puts "How many of you are there? Enter '0' just to watch, enter '1' for single player, '2' for two players, or 'exit' to end the game."
        input = user_input
        if input == "0"
            puts "Okay, here I go!"
            Game.new(Players::Computer.new("X"), Players::Computer.new("O"), Board.new).play
        end
        if input == "1"
            puts "Would you like to go first? If so, enter 'yes'"
            answer = gets.strip
            if answer == "yes"
            Game.new(Players::Human.new("X"), Players::Computer.new("O"), Board.new).play
            else
                Game.new(Players::Computer.new("X"), Players::Human.new("O"), Board.new).play
            end
        elsif input == "2"
            puts "Best of luck!"
            Game.new(Players::Human.new("X"), Players::Human.new("O"), Board.new).play
        end

        menu

    end

    def user_input
        gets.strip
    end

    def menu
        puts "Would you like to play again? Enter 'y' for yes or 'exit' to end the session."
        selection = user_input
        if selection == "y"
            start
        else
            goodbye
        end
    end

    def goodbye
        puts "See you next time!"
    end



end