class ParseWeatherData
  file = File.open('weather.dat', "r")
  lines = file.each_line.map(&:split)

  hash = Hash.new
  lines.map do |l|
    hash[l[0]] = (l[1].to_f - l[2].to_f)  
  end

  valid_temps = hash.select { |k,v| v > 0}
  smallest_temp_difference = valid_temps.min_by { |k,v| v if v != nil }
  puts smallest_temp_difference.last 
end
