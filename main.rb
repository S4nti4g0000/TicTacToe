require_relative 'lib/grid'
require_relative 'lib/player'
require_relative 'lib/computer'

new_grid = Grid.new
player = Player.new(new_grid)
computer = Computer.new(new_grid)

game_on = true

new_grid.generate_grid

while game_on

  puts "- Player's Turn - \n"
  player.player_choice
  puts "- Computer's Turn - \n"
  computer.computer_choice

  break if new_grid.nested_array.all? {|row| row.all? {|e| e.is_a?(String)}}

end

