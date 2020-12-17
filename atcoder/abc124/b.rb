N = gets.to_i
H = gets.split.map(&:to_i)

max = 0

puts H.select { |h|
  max = h if max < h
  max <= h
}.size
