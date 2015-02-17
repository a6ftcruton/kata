class TddMunging
  attr_reader :file, :temps

  def initialize(file)
    @file  = File.open(file, "r") 
    @temps = get_temps(rows) 
  end

  def rows
    file.each_line.map(&:split)
  end

  def calculate_temp_diff
    hash = Hash.new
    temps.map { |row| hash[row.day] = (row.max - row.min) }
    hash
  end

  def day_of_smallest_temp_range(all_diffs)    
    sorted = all_diffs.sort_by { |k,v| v }
    sorted.find { |day| day[1] > 0 }.first
  end


  Temp = Struct.new(:day, :max, :min)
  def get_temps(raw_data)
    raw_data.collect { |day| Temp.new(day[0], day[1].to_f, day[2].to_f) }
  end

end

r = TddMunging.new('./weather.dat')
diffs = r.calculate_temp_diff
puts r.day_of_smallest_temp_range(diffs)
