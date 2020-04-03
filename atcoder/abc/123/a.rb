a = gets.to_i
b = gets.to_i
c = gets.to_i
d = gets.to_i
e = gets.to_i
k = gets.to_i

puts [a, b, c, d, e].combination(2).find {|i, j| k < (i - j).abs } ? ':(' : 'Yay!'
