a, b, x = gets.split.map(&:to_i)

s = a % x == 0 ? a / x : a / x + 1
e = b / x

puts [e - s + 1, 0].max
