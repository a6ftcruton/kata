class Palindrome
  attr_reader :word

  def initialize(word)
    @word = word.downcase.gsub('\s', '')
  end

  def reversed
    reversed = ""
    split = word.split("")
    word.length.times { reversed << split.pop }
    reversed
  end

  def palindrome?
    reversed == word
  end
end
