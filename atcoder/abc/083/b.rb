N, A, B = gets.split.map(&:to_i)

puts 1.upto(N).select {|n|
  s = n.to_s.each_char.sum {|c| c.to_i }
  A <= s && s <= B
}.sum
