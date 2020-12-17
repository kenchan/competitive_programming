N = gets.to_i
x = gets.split.map(&:to_i)

puts x.sum(&:abs)
puts Math.sqrt(x.sum {|i| i.abs ** 2 })
puts x.map(&:abs).max
