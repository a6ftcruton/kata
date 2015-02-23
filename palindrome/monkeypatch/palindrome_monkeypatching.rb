class String
  def palindrome?
    letters = self.downcase.gsub(/[^a-z]/, '')
    letters == letters.reverse
  end
end

