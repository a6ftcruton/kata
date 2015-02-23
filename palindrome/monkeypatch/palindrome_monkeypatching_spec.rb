require './palindrome_monkeypatching'

describe 'String#palindrome?' do

  it 'returns true when called on string instances that are palindromes' do
    test_word = "dad"
    expect(test_word.palindrome?).to be true
  end

end
