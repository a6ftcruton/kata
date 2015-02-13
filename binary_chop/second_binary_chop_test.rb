require 'minitest/autorun'
require 'minitest/pride'
require './second_binary_chop'

class SecondBinaryChopTest < Minitest::Test
  include SecondBinaryChop

  def test_it_returns_negative_one_if_search_item_not_in_array  
    array = []
    assert_equal -1, chop(1, array)
  end

  def test_it_returns_index_when_single_item_in_array_matches_search_item
    array = [1]
    assert_equal 0, chop(1, [1])
  end
end
