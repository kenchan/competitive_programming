# https://atcoder.jp/contests/abc302/tasks/abc302_d


N, M, D = gets.split.map(&:to_i)
As = gets.split.map(&:to_i).sort
Bs = gets.split.map(&:to_i).sort

puts As.map {|a|
  b = Bs.bsearch {|b| (b - a).abs <= D }
  a + b
}.max
