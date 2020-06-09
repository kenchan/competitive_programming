H1, M1, H2, M2, K = gets.split.map(&:to_i)

puts (H2 * 60 + M2 - K) - (H1 * 60 + M1)
