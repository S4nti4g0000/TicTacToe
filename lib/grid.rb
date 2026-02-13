class Grid

  attr_reader :nested_array

  def initialize
    @nested_array = [[1,2,3],[4,5,6],[7,8,9]]
  end  

  def generate_grid()

    nested_array.each do |item|
      item.each do |inn_item|
        print "#{inn_item} "
      end
      print "\n"
    end

    return '_______________________'

  end

  def modify_grid(position, input)

    nested_array.each.with_index do |row, r_i|
      row.each.with_index do |value, v_i|
        if value == position
          nested_array[r_i][v_i] = input
        end
      end
    end

    generate_grid()

  end

end