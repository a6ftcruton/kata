require './multiples'
require 'minitest/autorun'
require 'minitest/pride'

class MultiplesTest < Minitest::Test
  include Multiples

  def test_it_selects_multiples_of_three_and_five
    list = Array(1...10) 
    results = all_multiples(list)
    assert_equal [3, 5, 6, 9], results   
  end

  def test_it_sums_all_multiples_in_a_collection
    list = Array(1...10)
    assert_equal 23, sum_multiples(list)
  end

end

