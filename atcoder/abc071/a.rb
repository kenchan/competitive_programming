x, a, b = gets.split.map(&:to_i)

puts (a - x).abs < (b - x).abs ? 'A' : 'B'
