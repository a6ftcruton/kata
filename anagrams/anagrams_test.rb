require 'anagrams'

class AnagramsTest < Minitest::Test

  def test_it_exists
    anagrams = Anagrams.new
    assert_equal ["undress"], anagrams.solve("sunders")
  end
end
