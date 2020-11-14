N = gets.to_i
AB = N.times.map { gets.split(" ").map(&:to_i) }

puts AB.sum {|(a, b)| (b - a + 1) * (a + b) / 2 }
