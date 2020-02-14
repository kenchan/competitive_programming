a, b = gets.split.map(&:to_i)

if a % 3 == 0 || b % 3 == 0 || (a + b) % 3 == 0
  puts 'Possible'
else
  puts 'Impossible'
end
