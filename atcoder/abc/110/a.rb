a = STDIN.gets.split.map(&:to_i).sort

puts a[2] * 10 + a[1] + a[0]
