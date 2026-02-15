require_relative 'grid'

class Computer
  
  def initialize(grid)
    @x = 0
    @y = 0
    @choice = 0
    @all_strings = false
    @grid = grid
  end

  def choose_random()
  x = rand(0..2)
  y = rand(0..2)

  @choice = @grid.nested_array[x][y]  
  @all_strings = @grid.nested_array.all? {|row| row.all? {|e| e.is_a?(String)}}
  end

  def computer_choice()

    choose_random()

    if @choice.is_a?(Numeric)
      @grid.modify_grid(@choice, 'O')
    else
      while @choice.is_a?(String) && (@all_strings == false)
        choose_random()
        return @grid.modify_grid(@choice, 'O') if @choice.is_a?(Numeric)
      end
    end

  end

end

