H, W = gets.split.map(&:to_i)
A = H.times.map { gets.split.map(&:to_i) }

min = A.flatten.min

puts A.sum {|l| l.sum {|a| a - min } }
