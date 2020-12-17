N = gets.to_i
D, X = gets.split.map(&:to_i)
A = N.times.map { gets.to_i }

puts A.inject(0) {|acc, a|
  acc + (D.to_f / a).ceil
} + X
