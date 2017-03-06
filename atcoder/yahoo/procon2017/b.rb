_, k = STDIN.gets.split(' ').map(&:to_i)
a = STDIN.gets.split(' ').map(&:to_i)

puts a.sort[0...k].inject(&:+) + (k * (k - 1) / 2)
