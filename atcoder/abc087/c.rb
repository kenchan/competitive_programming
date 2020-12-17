N = gets.to_i
A1 = gets.split.map(&:to_i)
A2 = gets.split.map(&:to_i)

puts N.times.map {|i|
  A1[0..i].sum + A2[i..N].sum
}.max
