require './word_list'

class Anagrams

  def permutations(word)
    w = word.downcase.split('')
    w.permutation.to_a.map {|p| p.join}
  end
 
  # def file
  #   Net::HTTP.get('http://codekata.com/data/wordlist.txt')
  # end

  # def valid_words
  #   File.open(file, "r").each_line { |line| puts line } 
  # end


  # def solve(word)
  #   permutations(word).collect { |word| valid_words.include?(word) }
  # end

  # private

  # def is_word?(word)
  #   list = WordList.new
  #   list.valid_words.include?(word)
  # end

end
