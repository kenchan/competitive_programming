N, M = gets.split.map(&:to_i)

if M < N * 2
  puts M / 2
  exit
end

m = M - N * 2

puts N + m / 4
