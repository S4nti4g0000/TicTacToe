require_relative 'grid'

class Player

    def initialize(grid)
      @choice = 0
      @grid = grid
    end
    

    def player_choice ()
        print "Choose a position from the board: "
        choice = gets.chomp.to_i
        @grid.modify_grid(choice)
    end

end