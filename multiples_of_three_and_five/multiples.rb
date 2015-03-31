module Multiples

  def sum_multiples(multiples)
    all_multiples(multiples).reduce(:+)
  end
  
  private

    def all_multiples(list)
      list.select { |num| num % 3 == 0 || num % 5 == 0 }
    end
end

# -------------------------------

include Multiples
list = Array(1...1000)
answer = sum_multiples(list)
puts answer 
