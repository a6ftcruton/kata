class ToHash
# Verbose first attempt:
#  def to_h(list)
#    hash = Hash.new
#    list.reduce(hash) { |acc, e| hash[e.first] = e.last; acc }
#  end

# Refactored into one liner
  def to_h(list)
    list.reduce({}) { |hash, item| hash[item.first] = item.last; hash}
  end
end
