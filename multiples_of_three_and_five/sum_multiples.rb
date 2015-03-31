class SumMultiples
  attr_reader :numbers

  def initialize(numbers)
    @numbers = numbers
  end

  def select_multiples
    numbers.select { |i| i % 3 == 0 || i % 5 == 0 }
  end

  def total
    select_multiples.reduce(:+)
  end

end
