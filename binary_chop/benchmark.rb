require 'benchmark/ips'
require './binary_chop'
require '../binary_chop_recursive/binary_chop_recursive'

include BinaryChopRecursive

Benchmark.ips do |r|
  r.config(time: 5, warmup: 1)
  test_array  = Array(1..1000)

  r.report 'binary_chop' do |times|
    BinaryChop.new(32, test_array)
    BinaryChop.new(799, test_array)
  end

  r.report 'binary_chop_recursive' do |times|
    chop(32, test_array)
    chop(799, test_array)
  end

  r.report 'built_in_bsearch' do |times|
    test_array.bsearch(32)
    test_array.bsearch(799)
  end

  r.compare!

end
