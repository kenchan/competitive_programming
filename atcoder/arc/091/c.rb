N, M = gets.split.map(&:to_i)

if N == 1 && M == 1
  puts 1
  exit
end

if N <= 2 && M <= 2
  puts 0
  exit
end

puts (N < 2 ? 1 : N - 2) * (M < 2 ? 1 : M - 2)
