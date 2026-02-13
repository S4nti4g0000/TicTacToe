require_relative 'lib/grid'
require_relative 'lib/player'
require_relative 'lib/computer'

new_grid = Grid.new
player = Player.new(new_grid)
computer = Computer.new(new_grid)

computer.computer_choice