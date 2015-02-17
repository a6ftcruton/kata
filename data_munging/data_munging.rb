#  Without classes:
#  ---------------------------------------------------
#  file = File.open('weather.dat', "r")
#  lines = file.each_line.map(&:split)
#
#  hash = Hash.new
#  lines.map do |l|
#    hash[l[0]] = (l[1].to_f - l[2].to_f)  
#  end
#
#  valid_temps = hash.select { |k,v| v > 0}
#  smallest_temp_difference = valid_temps.min_by { |k,v| v if v != nil }
#  puts smallest_temp_difference.last 


class ParseWeatherData
  attr_reader :file

  def initialize(file)
    @file = File.open(file, "r")
  end

  def file_rows
    file.each_line.map(&:split)
  end

  def min_temp_difference
    hash = Hash.new
    file_rows.map { |l| hash[l[0]] = (l[1].to_f - l[2].to_f) } 
    hash
  end
  
  def valid_temps
    min_temp_difference.select { |k,v| k.to_i > 0 }
  end
  
  def smallest_temp_difference
    valid_temps.min_by { |k,v| v }
  end

  def day_of_smallest_temp_difference
    "Smallest temperature difference occured on day " + smallest_temp_difference.first 
  end
end

weather = ParseWeatherData.new('weather.dat')
puts weather.day_of_smallest_temp_difference.inspect
