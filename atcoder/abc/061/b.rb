n, m = gets.split.map(&:to_i)

r = m.times.inject([0] * n) {|acc|
  a,b = gets.split.map(&:to_i)

  acc[a - 1] += 1
  acc[b - 1] += 1

  acc
}

puts r
