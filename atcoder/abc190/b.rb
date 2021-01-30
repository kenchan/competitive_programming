N, S, D = gets.split.map(&:to_i)
XY = N.times.map { gets.split.map(&:to_i) }

puts XY.any? {|x, y| x < S && D < y } ? 'Yes' : 'No'
