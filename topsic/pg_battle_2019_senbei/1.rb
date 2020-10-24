N, K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

puts A.inject(0) {|acc, a|
  acc + [a - K, 0].max
}
