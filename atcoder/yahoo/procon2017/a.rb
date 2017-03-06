str = STDIN.gets.chomp

puts str.split('').sort == 'yahoo'.split('').to_a.sort ? 'YES' : 'NO'
