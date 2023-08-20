# https://atcoder.jp/contests/abc274/tasks/abc274_e


N, M = gets.split.map(&:to_i)
Xs = Array.new(N)
Ys = Array.new(N)
N.times do |i|
  Xs[i], Ys[i] = gets.split.map(&:to_i)
end
Ps = Array.new(M)
Qs = Array.new(M)
M.times do |i|
  Ps[i], Qs[i] = gets.split.map(&:to_i)
end

puts ans
