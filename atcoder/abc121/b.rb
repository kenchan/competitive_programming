N, M, C = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
A = N.times.map { gets.split.map(&:to_i) }

puts N.times.select {|i|
  sum = M.times.inject(0) {|acc, j|
    acc + A[i][j] * B[j]
  } + C

  sum > 0
}.size
