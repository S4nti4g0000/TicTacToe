class Grid

  def generate_grid()

    nested_array = [[1,2,3],[4,5,6],[7,8,9]]

    nested_array.each do |item|
      item.each do |inn_item|
        print "#{inn_item} "
      end
      print "\n"
    end

  end 
   
end