N, M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

puts N < A.sum ? '-1' : N - A.sum
