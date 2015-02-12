require 'minitest/autorun'
require 'minitest/pride'
require './binary_chop_recursive'

class BinaryChopRecursiveTest < Minitest::Test
  include BinaryChopRecursive

  def test_it_returns_negative_one_when_array_empty
    list = []
    assert_equal(-1, chop(1, list))
  end

  def test_it_returns_negative_one_when_element_absent_from_array
    list = [2]
    assert_equal(-1, chop(1, list))
  end

  def test_it_returns_zero_if_only_element_also_matches
    list = [1]
    assert_equal(0, chop(1, list) )
  end

  def test_it_searches_lower_bound_when_midpoint_greater_than_search_item
    list = [1, 2, 3, 4]
    assert_equal(0, chop(1, list))
  end

  def test_it_searches_upper_bound_when_midpoint_less_than_search_item
    list = [1, 2, 3, 4, 5]
    assert_equal(4, chop(5, list))
  end

  def test_it_returns_index_of_search_item_in_upper_bound
    list = [1, 2, 3, 4, 5, 8, 9]
    assert_equal(5, chop(8, list))
  end
end
