N = gets.to_i
T = N.times.map { gets.to_i }

puts T.inject(1) {|acc, t| acc.lcm(t) }
