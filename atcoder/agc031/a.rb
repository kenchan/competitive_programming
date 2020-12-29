N = gets.to_i
S = gets.chomp.split('')

t = S.tally

puts (t.inject(1) {|acc, (_char, count)| acc *= count + 1} - 1) % (10 ** 9 + 7)
