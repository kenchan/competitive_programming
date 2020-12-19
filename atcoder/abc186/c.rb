N = gets.to_i

puts 1.upto(N).select {|i|
  i.to_s !~ /7/ && i.to_s(8) !~ /7/
}.size
