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

  puts "- Player's Turn - \n"
  player.player_choice
  #puts "- Computer's Turn - \n"
  #computer.computer_choice

  new_grid.nested_array.select.with_index do |row, i|
    if row == ['X','X','X']
      puts "\nPLAYER WINS! \n"
      game_on = false
    elsif row == ['O','O','O']
      puts "\nCOMPUTER WINS! \n"
      game_on = false
    end

  end
  
  if CheckWinner.column_check(new_grid.nested_array, 'X') == true || 
     CheckWinner.diagonal_check(new_grid.nested_array, 'X') == true

    puts "\nPLAYER WINS! \n"
    game_on = false
  end
  

  break if new_grid.nested_array.all? {|row| row.all? {|e| e.is_a?(String)}}

end

