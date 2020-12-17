D, N = gets.split.map(&:to_i)

if N != 100
  puts 100 ** D * N
else
  puts 100 ** D * N + (100 ** D)
end
