require './anagrams'
require 'minitest/autorun'
require 'minitest/pride'

class AnagramsTest < MiniTest::Test

  def test_it_creates_all_permutations_for_a_word
    anagrams = Anagrams.new
    assert_equal ["cat", "cta", "atc", "act", "tca", "tac"].sort, anagrams.permutations("cat").sort
  end

  # def test_it_returns_array_of_anagrams
  #   anagrams = Anagrams.new
  #   assert_equal ["cat", "act"], anagrams.solve("cat")
  # end

end
