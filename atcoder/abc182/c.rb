N = gets.chomp

s = N.each_char.inject(0) do |acc, c|
  acc + c.to_i
end

case s % 3
when 0
  puts 0
when 1
  if N.length > 1 && N.each_char.any? {|c| c.to_i % 3 == 1 }
    puts 1
  elsif N.length > 2 && N.each_char.count {|c| c.to_i % 3 == 2 } >= 2
    puts 2
  else
    puts -1
  end
when 2
  if N.length > 1 && N.each_char.any? {|c| c.to_i % 3 == 2 }
    puts 1
  elsif N.each_char.count {|c| c.to_i % 3 == 1 } >= 2 && N.length > 2
    puts 2
  else
    puts -1
  end
end
