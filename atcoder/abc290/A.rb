# https://atcoder.jp/contests/abc290/tasks/abc290_a

N, M = gets.split.map(&:to_i)
As = gets.split.map(&:to_i)
Bs = gets.split.map(&:to_i)

puts Bs.inject(0) {|acc, i| As[i - 1] + acc }
