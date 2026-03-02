require_relative 'grid'

class Player

  attr_reader :can_continue

  def initialize(grid)
    @choice = 0
    @can_continue = false
    @grid = grid
  end
  
  def player_choice ()
    @can_continue = false

    print "Choose a position from the board: "
    choice = gets.chomp.to_i

    if @grid.nested_array.flatten.include?(choice)
      @grid.modify_grid(choice, 'X')
      @can_continue = true
    else

      until @grid.nested_array.flatten.include?(choice)
        print "Wrong or already taken. Please choose another: "
        choice = gets.chomp.to_i
      end

      @grid.modify_grid(choice, 'X')
      @can_continue = true
    end   
    
  end

end