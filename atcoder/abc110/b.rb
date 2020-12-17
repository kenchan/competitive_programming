n, m, x, y = STDIN.gets.split.map(&:to_i)
xs = STDIN.gets.split.map(&:to_i)
ys = STDIN.gets.split.map(&:to_i)

xs << x
ys << y

puts xs.max < ys.min ? 'No War' : 'War'
