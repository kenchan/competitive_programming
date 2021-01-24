C = gets.chomp

puts C.split('').uniq.size == 1 ? 'Won' : 'Lost'
