x, y = gets.split.map(&:to_i)

if x == 0
  if 0 < y
    puts y
  else
    puts y.abs + 1
  end
elsif y == 0
  if 0 < x
    puts x + 1
  else
    puts x.abs
  end
elsif x < 0 && y < 0
  if x < y
    puts (y - x).abs
  else
    puts (y - x).abs + 2
  end
elsif x < 0 && 0 < y
  puts (y.abs - x.abs).abs + 1
elsif 0 < x && 0 < y
  if x < y
    puts (y - x).abs
  else
    puts (y - x).abs + 2
  end
elsif 0 < x && y < 0
  puts (y.abs - x.abs).abs + 1
end
