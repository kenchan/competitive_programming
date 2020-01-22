a, b = STDIN.gets.split.map(&:to_i)

puts [a.to_s * b, b.to_s * a].sort.first
