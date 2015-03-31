require './sum_multiples'
require 'minitest/autorun'
require 'minitest/pride'

class SumMultiplesTest < Minitest::Test

  def test_it_selects_multiples_of_three_and_five
    list = Array(1...10) 
    sum_multiples = SumMultiples.new(list) 
    assert_equal [3, 5, 6, 9], sum_multiples.select_multiples   
  end

  def test_it_returns_sum_of_all_multiples_in_a_list
    list = Array(1...10) 
    sum_multiples = SumMultiples.new(list) 
    assert_equal 23, sum_multiples.total   
  end
end
