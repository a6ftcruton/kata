require './word_list'
require 'minitest/autorun'
require 'minitest/pride'

class WordListTest < MiniTest::Test

  def test_it_writes_a_file
    list = WordList.new
    word_list = list.write_valid_words_to_file
    assert('./valid_words.txt') 
  end
end
