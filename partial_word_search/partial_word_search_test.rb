require 'minitest/autorun'
require 'minitest/pride'
require './partial_word_search'

class PartialWordSearchTet < Minitest::Test
  include PartialWordSearch

  def test_it_returns_a_message_when_no_strings_match
    list = ["a", "b"]
    test_string = "c"
    assert_equal "No match found.", partial_word_search(list, test_string)  
  end
  
  def test_it_returns_no_message_if_any_match_found
      list = ["a", "b", "c"]
      test_string = "c"
      assert_equal ["c"], partial_word_search(list, test_string)  
  end

  def test_it_returns_the_single_string_containing_matched_elements
    list = ["a", "b"]
    test_string = "a"
    assert_equal ["a"], partial_word_search(list, test_string)  
  end

  def test_it_returns_string_with_partial_match
    list = ["cat"]
    test_string = "a"
    assert_equal ["cat"], partial_word_search(list, test_string)  
  end

  def test_it_returns_all_words_containing_match
    list = ["cat", "bat", "sat", "rat"]
    test_string = "at"
    assert_equal list, partial_word_search(list, test_string)  
  end
end
