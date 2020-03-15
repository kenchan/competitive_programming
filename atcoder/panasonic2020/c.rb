a, b, c = gets.split.map(&:to_i)

if c - a - b < 0
  puts 'No'
  exit
end

if 4 * a * b < (c - a - b) ** 2
  puts 'Yes'
else
  puts 'No'
end
