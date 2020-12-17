N, K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

if N <= K
  puts 1
  exit
end

puts ((N - 1).to_f / (K - 1)).ceil
