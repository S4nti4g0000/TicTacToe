module CheckWinner 

  def column_check(grid, choice)
    
    3.times do |i|
      return true if grid[0][i] == choice &&
                     grid[1][i] == choice &&
                     grid[2][i] == choice
    end
  
  end

  def row_check(grid, choice)
    
    return true if grid[0].all?(choice) ||
                   grid[1].all?(choice) ||
                   grid[2].all?(choice)

  end
  
  def diagonal_check(grid, choice)
    
    if grid[0][0] == choice &&
       grid[1][1] == choice &&
       grid[2][2] == choice
      
      return true 
  
    elsif grid[0][2] == choice &&
          grid[1][1] == choice &&
          grid[2][0] == choice
  
      return true 
  
    end
  
  end

  module_function :column_check, :diagonal_check, :row_check

end
