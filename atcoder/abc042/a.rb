A, B, C = gets.split.map(&:to_i)

if [A, B, C].sort == [5, 5, 7]
  puts 'YES'
else
  puts 'NO'
end
