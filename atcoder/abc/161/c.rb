N, K = gets.split.map(&:to_i)

mod = N % K

d = (mod - K).abs

puts d < mod ? d : mod
