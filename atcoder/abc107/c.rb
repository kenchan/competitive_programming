N, K = gets.split.map(&:to_i)
x = gets.split.map(&:to_i)

puts 0.upto(N - K).map {|i|
  a = x[i].abs + (x[i + K - 1] - x[i]).abs
  b = x[i + K - 1].abs + (x[i + K - 1] - x[i]).abs

  a < b ? a : b
}.min
