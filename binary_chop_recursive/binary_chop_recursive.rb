module BinaryChopRecursive

  def chop(search_item, list, lower_bound=0, upper_bound=list.length-1)
    return -1 unless list.include?(search_item)
    return if lower_bound > upper_bound
    midpoint = (lower_bound + upper_bound) / 2
    search_item < list[midpoint] ?  upper_bound = midpoint - 1 : lower_bound = midpoint + 1
    list[midpoint] == search_item ? midpoint : chop(search_item, list, lower_bound, upper_bound)
  end
end
