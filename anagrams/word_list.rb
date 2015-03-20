require 'net/http'

class WordList

  def file
    Net::HTTP.get('http://codekata.com/data/wordlist.txt')
  end

  def valid_words
    File.open(file, "r").each_line { |line| puts line } 
  end

end
