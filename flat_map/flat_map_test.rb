require './flat_map'
require 'minitest/autorun'
require 'minitest/pride'

class FlatMapTest < Minitest::Test
  include FlatMap

  def test_it_returns_array_with_single_element
    list = [1]
    proc = Proc.new { |i| i }
    result = flat_map(list, proc)
    assert_equal [1], result
  end

  def test_it_returns_values_changed_by_proc
    list = [1]
    proc = Proc.new { |i| i + 1 }
    result = flat_map(list, proc)
    assert_equal [2], result
  end

  def test_it_returns_one_dimensional_array
    list = [[1]]
    proc = Proc.new { |i| i }
    result = flat_map(list, proc)
    assert_equal [1], result
  end

  def test_it_returns_multiple_list_items_in_one_dimensional_array
    list = [[1], [2], [3, 4]]
    proc = Proc.new { |i| i }
    result = flat_map(list, proc)
    assert_equal [1, 2, 3, 4], result
  end
end
