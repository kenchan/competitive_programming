# https://atcoder.jp/contests/abc307/tasks/abc307_a

N = gets.to_i
As = gets.split.map(&:to_i)

puts N.times.map {|i|
  As[i * 7, 7].sum
}.join(" ")
