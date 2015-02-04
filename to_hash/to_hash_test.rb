require 'minitest/autorun'
require 'minitest/pride'
require './to_hash'

class ToHashTest < Minitest::Test

  def test_it_returns_single_key_value_pair
    hasher = ToHash.new
    list = [["cat", "feline"]]
    list_to_hash = {"cat" => "feline"}
    assert_equal list_to_hash, hasher.to_h(list)  
  end

  def test_it_returns_single_hash_for_multiple_arrays
    hasher = ToHash.new
    list = [["red", "black"], ["pizza", "poptarts"], ["gin", "juice"]]
    list_to_hash = {"red" => "black", "pizza" => "poptarts", "gin" => "juice"}
    assert_equal list_to_hash, hasher.to_h(list)  
  end

end
