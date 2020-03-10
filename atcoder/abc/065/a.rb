X, A, B = gets.split.map(&:to_i)

if 0 <= A - B
  puts 'delicious'
elsif B - A <= X
  puts 'safe'
else
  puts 'dangerous'
end
