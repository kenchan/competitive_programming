x = gets.to_i

if x <= 6
  puts 1
elsif x <= 11
  puts 2
else
  i = x / 11
  j = x % 11

  if j == 0
    puts i * 2
  elsif j <= 6
    puts i * 2 + 1
  else
    puts i * 2 + 2
  end
end
