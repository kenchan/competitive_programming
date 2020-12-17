K = gets.to_i
A, B = gets.split.map(&:to_i)

puts K.step(B, K).any? {|i| A <= i} ? 'OK' : 'NG'
