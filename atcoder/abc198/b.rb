N = gets.chomp

n = N.sub(/0+$/, '')

puts n == n.reverse ? 'Yes' : 'No'
