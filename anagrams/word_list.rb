require 'net/http'

class WordList

  def response
    uri = URI("http://codekata.com/data/wordlist.txt")
    Net::HTTP.get(uri)
  end

  def write_valid_words_to_file 
    unless File.exist?('./valid_words.txt')
      File.open('valid_words.txt', "w+") { |file| file.write(response) }
    end
  end

end
