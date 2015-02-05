require './palindrome'

describe 'Palindrome' do

  it 'returns false if word is not a palindrome' do
    color = "red"
    word = Palindrome.new
    expect(word.palindrome?(color)).to be false
  end

  it 'returns true if word is a palindrome' do
    word = "dad"
    palindrome = Palindrome.new
    expect(palindrome.palindrome?(word)).to be true
  end

  it 'returns true for strings containing multiple words' do
    phrase = "race car"
    palindrome = Palindrome.new
    expect(palindrome.palindrome?(phrase)).to be true
  end

  it 'ignores special characters' do
    phrase = "A man, a plan, a canal, Panama"
    palindrome = Palindrome.new
    expect(palindrome.palindrome?(phrase)).to be true
  end

end
