N  = gets.to_i
A = gets.split.map(&:to_i)

lcm = A.inject(1) {|acc, a| acc.lcm(a) }

puts lcm.to_f / A.sum {|a| lcm / a }
