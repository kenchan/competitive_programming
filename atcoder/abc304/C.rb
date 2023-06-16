# https://atcoder.jp/contests/abc304/tasks/abc304_c


N, D = gets.split.map(&:to_i)
Xs = Array.new(N)
Ys = Array.new(N)
N.times do |i|
  Xs[i], Ys[i] = gets.split.map(&:to_i)
end

puts ans
