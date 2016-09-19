n = STDIN.read.to_i
puts n.times.inject(0) {|sum, i| sum += n - i}
