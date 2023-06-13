# https://atcoder.jp/contests/arc013/tasks/arc013_1

N, M, L = gets.split.map(&:to_i)
P, Q, R = gets.split.map(&:to_i)

puts [P, Q, R].permutation(3).map {|i, j, k|
  (N / i) * (M / j) * (L / k)
}.max
