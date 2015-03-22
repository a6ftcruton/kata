require './anagrams'
require 'minitest/autorun'
require 'minitest/pride'

class AnagramsTest < MiniTest::Test

  def test_it_creates_all_permutations_for_a_word
    anagrams = Anagrams.new
    assert_equal ["cat", "cta", "atc", "act", "tca", "tac"].sort, anagrams.permutations("cat").sort
  end

  def test_it_returns_array_of_anagrams
    anagrams = Anagrams.new
    assert_equal ["cat", "act", "atc"], anagrams.all("cat")
  end

  def test_it_returns_all_words
    anagrams = Anagrams.new
    assert_equal ["enlist", "elints", "listen", "inlets", "silent", "tinsel"], anagrams.all("enlist")
  end
end
