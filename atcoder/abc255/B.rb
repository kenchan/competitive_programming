# https://atcoder.jp/contests/abc255/tasks/abc255_b


N, K = gets.split.map(&:to_i)
As = gets.split.map(&:to_i)
Xs = Array.new(N)
Ys = Array.new(N)
N.times do |i|
  Xs[i], Ys[i] = gets.split.map(&:to_i)
end

puts ans
