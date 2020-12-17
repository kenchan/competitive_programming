N = gets.to_i

puts 2.upto(N).inject(2) {|acc, i| acc.lcm(i) } + 1
