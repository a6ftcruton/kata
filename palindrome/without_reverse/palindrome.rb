class Palindrome
  attr_reader :word

  def initialize(word)
    @word = word.downcase.gsub('\s', '')
  end

  #refactor to use reduce
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
p = Palindrome.new("dad")
puts p.palindrome?
