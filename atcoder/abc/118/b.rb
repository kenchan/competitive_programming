N, M = gets.split.map(&:to_i)

puts N.times.inject((1..M).to_a) {|acc, _|
  k = gets.split.map(&:to_i)[1..-1]
  acc & k
}.size
