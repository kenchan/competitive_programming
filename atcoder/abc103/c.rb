N = gets.to_i
a = gets.split.map(&:to_i)

puts a.sum {|i| i - 1 }
