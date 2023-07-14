# https://atcoder.jp/contests/abc014/tasks/abc014_2


n, X = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)

puts n.times.sum {|i|
  if X[i] == 1
    as[i]
  else
    0
  end
}
