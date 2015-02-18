require './tdd_munging'
# Todo: change file.open to convert headers to symbols
class SoccerData
  attr_reader :file, :goals

  def initialize(file)
    @file = File.open(file, "r")  
    @goals = goal_stats(rows)
  end

  def rows
    file.each_line.map(&:split)
  end

  Goal = Struct.new(:team, :goals_scored, :goals_allowed)
  def goal_stats(data)
    data.collect { |row| Goal.new(row[1], row[6], row[8]) } 
  end

  def calculate_goal_diff
    hash = Hash.new
    goals.map { |team| hash[team.team] = (team.goals_scored.to_f - team.goals_allowed.to_f).abs }
    hash
  end

  def sorted_goal_difference 
    calculate_goal_diff.sort_by { |k,v| v}
  end
  
  def smallest_goal_difference
    sorted_goal_difference.find { |diff| diff[1].to_f > 0 }.first
  end
end

d = SoccerData.new('./football.dat')
puts d.smallest_goal_difference
