A, B = gets.split.map(&:to_i)

puts (A / B) + (A % B > 0 ? 1 : 0)
