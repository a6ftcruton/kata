require 'minitest/autorun'
require 'minitest/pride'
require './lengths'

class LengthsTest < Minitest::Test
  include Lengths

  def test_it_cleans_data_to_contain_only_string_elements
    words = [1, "a"]
    assert_equal ["a"], clean_data(words)
  end

  def test_it_returns_most_common_length
    words = %w(a at it et cat)
    result = most_common_length(words)
    assert_equal 2, result
  end

  def test_it_returns_most_common_length_despite_non_normalized_data
    words = ["a", 1, "at", "it", "cat", "bat", "sat"]
    results = most_common_length(words)
    assert_equal 3, results
  end

  def test_it_returns_all_lengths_in_case_of_a_tie
    words = %w(aaaaaa a b c aa bb cc aaa bbb ccc )
    assert_equal [1, 2, 3], most_common_length(words).sort
  end
end
