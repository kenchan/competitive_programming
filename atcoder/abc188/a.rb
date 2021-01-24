X, Y = gets.split.map(&:to_i)

puts (X - Y).abs < 3 ? 'Yes' : 'No'
