require 'minitest/autorun'
require 'minitest/pride'
require './binary_chop'

class BinaryChopTest < Minitest::Test

  def test_it_returns_negative_one_when_element_absent_from_array
    bc = BinaryChop.new(3, [])
    assert_equal(-1, bc.chop)
  end

  def test_it_returns_zero_if_only_element_also_matches
    bc = BinaryChop.new(1, [1])
    assert_equal(0,  bc.chop)
  end
end
