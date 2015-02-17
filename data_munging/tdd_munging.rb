class TddMunging
  attr_reader :file

  def initialize(file)
    @file = File.open(file, "r") 
  end

  def rows
    file.each_line.map(&:split)
  end

  def calculate_temp_diff
    hash = Hash.new
    self.rows.each do |row|
      hash[row[0]] = (row[1].to_f - row[2].to_f)
    end
    hash
  end

  def day_of_smallest_temp_range(all_diffs)    
    sorted = all_diffs.sort_by { |k,v| v }
    sorted.find { |day| day[1] > 0 }.first
  end

end
