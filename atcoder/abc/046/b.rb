N, K = gets.split.map(&:to_i)

puts K * ((K - 1) ** (N - 1))
