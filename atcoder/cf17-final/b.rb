S = gets.chomp

t = S.each_char.tally

case
when S.size == 1
  puts 'YES'
when t.keys.size == 1
  puts 'NO'
when t.keys.size == 2
  if S.size == 2
    puts 'YES'
  else
    puts 'NO'
  end
else
  if (t["a"] - t["b"]).abs < 2 && (t["a"] - t["c"]).abs < 2 && (t["b"] - t["c"]).abs < 2
    puts 'YES'
  else
    puts 'NO'
  end
end
