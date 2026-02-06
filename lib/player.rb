require_relative 'grid'

class Player

    def initialize
      @choice = 0
    end
    

    def player_choice ()
        print "Choose a position from the board: "
        choice = gets.chomp.to_i
        choice
    end



end