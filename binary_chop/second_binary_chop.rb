module SecondBinaryChop
  def chop(search_item, array, lower = 0, upper = (array.length - 1) )
    midpoint = lower + upper / 2
    return -1 unless array.include?(search_item)
    return midpoint if array[midpoint] == search_item
  end
end
