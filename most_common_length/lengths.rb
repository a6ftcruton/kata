module Lengths
  def most_common_length(words)
    words   = clean_data(words)
    lengths = group_by_length(words) 
    sorted  = sort_by_length(lengths)
    collect_ties_for_most_common_length(sorted)
  end

  private

  def clean_data(words)
    words.delete_if { |w| w.class != String }
  end

  def group_by_length(words)
    words.group_by { |word| word.length }
  end

  def sort_by_length(lengths)
    hash = Hash.new
    lengths.map { |k,v| hash[k] = v.size; hash }
    hash.sort {|x,y| y.last <=> x.last}
  end

  def collect_ties_for_most_common_length(sorted)
    common_length = sorted.first[0]
    sorted.reduce([]) { |acc, el| el.last == common_length ?  acc << el.first : acc; acc  }
  end

end
