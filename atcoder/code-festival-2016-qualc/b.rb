K, T = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

m = a.max

puts [m - 1 - (K - m), 0].max
