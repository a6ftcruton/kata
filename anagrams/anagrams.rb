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
    pattern = /\b(?:#{word})\b/
    File.foreach('./valid_words.txt').any? do |line| 
      line.scrub.strip.eql?(word) # 115 seconds :( 
    end
  end

end
