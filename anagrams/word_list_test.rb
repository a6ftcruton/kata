require './word_list'

class WordListTest < MiniTest::Test

  def test_it_reads_a_file
    list = WordList.new
    assert list.file.class
    # list.valid_words
    # assert_equal "a", list.first
  end
end
