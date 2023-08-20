# https://atcoder.jp/contests/abc274/tasks/abc274_f


N, A = gets.split.map(&:to_i)
Ws = Array.new(N)
Xs = Array.new(N)
Vs = Array.new(N)
N.times do |i|
  Ws[i], Xs[i], Vs[i] = gets.split.map(&:to_i)
end

puts ans
