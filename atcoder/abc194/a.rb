A, B = gets.split.map(&:to_i)

if 15 <= A + B && 8 <= B
  puts 1
elsif 10 <= A + B && 3 <= B
  puts 2
elsif 3 <= A + B
  puts 3
else
  puts 4
end
