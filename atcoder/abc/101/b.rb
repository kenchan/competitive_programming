n = gets.chomp

sum = n.each_char.map(&:to_i).inject(&:+)

puts n.to_i % sum == 0 ? 'Yes' : 'No'
