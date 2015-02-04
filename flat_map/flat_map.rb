module FlatMap

  def flat_map(list, block)
    string_list = split_array(list)
    numbers_only = retain_numbers(string_list)
    numbers_only.map { |i| block.call(i.to_i) }
  end

  private

  def split_array(collection)
    collection.to_s.split('')
  end

  def retain_numbers(collection)
    collection.delete_if { |i| !i.match(/[0-9]/) }
  end
end
