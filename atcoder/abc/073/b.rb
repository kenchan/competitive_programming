N = gets.to_i

puts N.times.map {
  l, r = gets.split.map(&:to_i)
  r - l + 1
}.inject(&:+)
