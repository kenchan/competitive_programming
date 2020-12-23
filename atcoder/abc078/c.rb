N, M = gets.split.map(&:to_i)

puts (1900 * M + 100 * (N - M)) * 2 ** M
