N = gets.to_i

if N == 1
  puts 0
  exit
end

puts ((10 ** N) - ((2 * (9 ** N)) - (8 ** N))) % (10 ** 9 + 7)
