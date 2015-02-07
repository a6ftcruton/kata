module PartialWordSearch

  def partial_word_search(list, test_string)
    results = list.reduce([]) do |acc, element| 
      acc << element if element.include?(test_string)
      acc
    end 
    results.empty? ? "No match found." : results
  end

end
