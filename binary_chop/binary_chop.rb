class BinaryChop
  attr_reader :search_item, :array

  def initialize(search_item, array)
    @search_item = search_item
    @array = array
  end

  def chop
    #return -1 if element not in array
    if search_item_absent?
      -1
    #return 0 if only element in array is also match
    elsif array.length == 1
      0 
    elsif midpoint_matches_search_item 
      #return index of search item
      array.index(search_item)
    end
  end

    def search_item_absent?
      !array.include?(search_item)
    end

    def midpoint_matches_search_item 
      midpoint == search_item
    end

    def midpoint
      (array.length - 1) / 2
    end

#    if !array.include?(search_item)
#      -1
#    elsif found_match?(search_item, array)
#      find_middle(array)  
#   end
#
#    def find_middle(array)
#      array.length / 2
#    end
#
#    def found_match?(search_item, array)
#      find_middle(array) == search_item 
#    end
  end



#find middle of array, is search item > or < 
# [1, 2, 3] # => 2 
# [1, 2, 3, 4] # => 3
