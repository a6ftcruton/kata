require './tdd_munging'

describe 'tdd_munging' do

#   Test Data:
#
#   Day Max  Min   Avg
#    1  88    59    74
#    2  79    63    71
  
  it 'parses a .dat file into rows' do
    expect(file.rows.count).to eq 3 
  end

  it 'calculates temp diff for each row' do
    diffs = file.calculate_temp_diff

    expect(diffs["2"]).to eq 16 
  end

  it 'returns the smallest temp diff' do
    diffs    = file.calculate_temp_diff
    smallest = file.day_of_smallest_temp_range(diffs)

    expect(smallest).to eq "2"
  end

  private

  def file
    filepath = "./test_data.dat"
    TddMunging.new(filepath)
  end
end
