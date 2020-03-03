N, D = gets.split.map(&:to_i)

X = N.times.map {
  gets.split.map(&:to_i)
}

puts X.combination(2).select {|x, y|
  d = Math.sqrt(D.times.inject(0) {|acc, i|
    acc + (x[i] - y[i]) ** 2
  })

  d == d.to_i
}.size
