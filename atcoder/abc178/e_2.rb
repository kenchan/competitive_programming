N = gets.to_i
xy = N.times.map { gets.split.map(&:to_i) }

xy.sort_by! {|i| i[0] + i[1] }
max = xy.first
min = xy.last

puts (min[0] - max[0]).abs + (min[1] - max[1]).abs
