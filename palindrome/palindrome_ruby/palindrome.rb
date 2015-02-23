class Palindrome

  def palindrome?(word)
    letters = word.downcase.gsub(/[^a-z]/, '')
    letters == letters.reverse
  end
end


#Via MonkeyPatching
class String
  def palindrome?
    letters = self.downcase.gsub(/[^a-z]/, '')
    letters == letters.reverse
  end
end

