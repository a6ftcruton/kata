require 'minitest/autorun'
require 'minitest/pride'
require './palindrome'

class PalindromeTest < Minitest::Test

  def test_it_returns_true_for_single_word_palindrome
    p = Palindrome.new("dad")
    assert_equal true,  p.palindrome?
  end

  def test_it_returns_false_for_single_non_palindrome
    p = Palindrome.new("xyz")
    assert_equal false, p.palindrome?
  end

  def test_it_returns_true_for_palindrome_phrase
    p = Palindrome.new("Barrel lerrab") 
    assert_equal true,  p.palindrome?
  end
end
