require_relative 'grid'

class Computer
  
  def initialize(grid)
    @x = 0
    @y = 0
    @choice = 0
    @chose_first = false
    @grid = grid
  end

  def choose_random()
  x = rand(0..2)
  y = rand(0..2)

  @choice = @grid.nested_array[x][y]
  end

  def computer_choice()
    unless @chose_first
      choose_random()

      if @choice.is_a?(Numeric)
        @grid.modify_grid(@choice, 'O')
      else
        while @choice.is_a?(String)
          choose_random()
          return @grid.modify_grid(@choice, 'O') if @choice.is_a?(Numeric)
        end
      end
      
    end    
  end

end

