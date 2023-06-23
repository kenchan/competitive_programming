n = gets.chomp.to_i

d1 = n / 5 * 5
d2 = (n + 4) / 5 * 5

puts (d1 - n).abs < (d2 - n).abs ? d1 : d2
