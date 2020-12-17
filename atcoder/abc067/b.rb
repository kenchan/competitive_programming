N, K = gets.split.map(&:to_i)
l = gets.split.map(&:to_i)

puts l.sort.reverse.take(K).inject(&:+)
