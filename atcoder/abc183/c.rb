N, K = gets.split.map(&:to_i)
T = N.times.map { gets.split.map(&:to_i) }

puts 2.upto(N).map(&:to_i).permutation(N - 1).select {|moves|
  moves.unshift(1)
  moves.push(1)

  time = moves.each_cons(2).sum {|a, b| T[a - 1][b - 1] }

  time == K
}.size
