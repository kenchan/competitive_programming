N, S, T = gets.split.map(&:to_i)
A = N.times.map { gets.to_i }

current = 0

puts A.select {|a| 
	current += a
	S <= current && current <= T
}.size
