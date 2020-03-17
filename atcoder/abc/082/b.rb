s = gets.chomp
t = gets.chomp

puts s.chars.sort.join < t.chars.sort.reverse.join ? 'Yes' : 'No'
