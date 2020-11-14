N, A, B = gets.split.map(&:to_i)

if B - A < 0
  puts 0
  exit
end

if N < B - A
  puts 0
  exit
end

puts (A + B * (N - 1)) - (A * (N - 1) + B) + 1
