class BinaryChop
  attr_reader :search_item, :array

  def initialize(search_item, array)
    @search_item = search_item
    @array = array
  end

  def chop
    if search_item_absent?
      -1
    elsif array.length == 1
      0 
    elsif midpoint_matches_search_item?
      array.index(search_item)
    else
      return_index_of_search_item
    end
  end

  def return_index_of_search_item
    upper_bound = array.length - 1
    lower_bound = 0
    while upper_bound >= lower_bound
      midpoint = (upper_bound + lower_bound) / 2
      if array[midpoint] > search_item 
        upper_bound = midpoint - 1
      elsif array[midpoint] < search_item
        lower_bound = midpoint + 1
      else
        return midpoint
      end
    end
  end

  def search_item_absent?
    !array.include?(search_item)
  end

  def midpoint_matches_search_item? 
    array[midpoint] == search_item
  end

  def midpoint
    (array.length - 1) / 2
  end

  end



#find middle of array, is search item > or < 
# [1, 2, 3] # => 2 
# [1, 2, 3, 4] # => 3
