N = gets.to_i
s = N.times.map { gets.chomp }
M = gets.to_i
t = M.times.map { gets.chomp }

m = s.inject({}) {|acc, str|
  acc[str] ||= 0
  acc[str] += 1
  acc
}

m = t.inject(m) {|acc, str|
  acc[str] ||= 0
  acc[str] -= 1
  acc
}

puts [m.values.max, 0].max
