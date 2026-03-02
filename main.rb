require_relative 'lib/grid'
require_relative 'lib/player'
require_relative 'lib/computer'
require_relative 'lib/check_winner'

new_grid = Grid.new
player = Player.new(new_grid)
computer = Computer.new(new_grid)

game_on = true

new_grid.generate_grid

while game_on  

  if new_grid.nested_array.all? {|row| row.all? {|e| e.is_a?(String)}}
    game_on = false 
  else 
    puts "- Player's Turn - \n"
    player.player_choice

    unless !game_on && !player.can_continue
      puts "- Computer's Turn - \n"
      computer.computer_choice 
    end    
  end

  
  if CheckWinner.column_check(new_grid.nested_array, 'X') == true || 
     CheckWinner.diagonal_check(new_grid.nested_array, 'X') == true ||
     CheckWinner.row_check(new_grid.nested_array, 'X')

    puts "\nPLAYER WINS! \n"
    game_on = false

  elsif CheckWinner.column_check(new_grid.nested_array, 'O') == true || 
        CheckWinner.diagonal_check(new_grid.nested_array, 'O') == true ||
        CheckWinner.row_check(new_grid.nested_array, 'O')
    
      puts "\nCOMPUTER WINS! \n"
      game_on = false
  end

end

