R, X, Y = gets.split.map(&:to_i)

d = Math.sqrt(X ** 2 + Y ** 2)

if d < R
  puts 2
else
  puts (d / R).ceil
end
