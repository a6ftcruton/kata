class DryMunging
  attr_reader :file
  
  MinMax = Struct.new(:individual, :max, :min)

  def initialize(file)
    @file = File.open(file, "r")
  end

  def rows
    file.each_line.map(&:split)
  end

  def soccer_stats
    rows.collect { |row| MinMax.new(row[1], row[6].to_f, row[8].to_f) }
  end

  def weather_stats
    rows.collect { |row| MinMax.new(row[0], row[1].to_f, row[2].to_f) }
  end

  def calculate_diff(stat_type)
    hash = Hash.new
    stat_type.map { |row| hash[row.individual] = (row.max - row.min).abs }
    hash
  end

  def soccer_diff
    calculate_diff(soccer_stats)
  end

  def weather_diff
    calculate_diff(weather_stats)
  end

  def least_difference(diff_data)
    sorted = diff_data.sort_by { |k,v| v }
    sorted.find { |data| data[1] > 0 }.first
  end

  def least_temperature_difference
    least_difference(weather_diff)
  end

  def least_goal_difference
    least_difference(soccer_diff)
  end
end

