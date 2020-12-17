N = gets.to_i

puts 105.step(N, 2).select {|o|
  1.upto(o).select {|i| o % i == 0}.length == 8
}.length
