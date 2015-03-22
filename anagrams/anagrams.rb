require './word_list'

class Anagrams

  def permutations(word)
    w = word.downcase.split('')
    w.permutation.map(&:join)
  end
 
  def all(word)
    permutations(word).reduce([]) {|acc, entry| acc << entry if word?(entry); acc}
  end

  private

  def word?(word)
    #if line starts with first 3 letters in word...
    File.foreach('./valid_words.txt').any? { |line| line.scrub.downcase.strip.eql?(word) }
  end

end
