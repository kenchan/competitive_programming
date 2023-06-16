# https://atcoder.jp/contests/abc304/tasks/abc304_e


N, M = gets.split.map(&:to_i)
us = Array.new(M)
vs = Array.new(M)
M.times do |i|
  us[i], vs[i] = gets.split.map(&:to_i)
end
K = gets.to_i
xs = Array.new(K)
ys = Array.new(K)
K.times do |i|
  xs[i], ys[i] = gets.split.map(&:to_i)
end
Q = gets.to_i
ps = Array.new(Q)
qs = Array.new(Q)
Q.times do |i|
  ps[i], qs[i] = gets.split.map(&:to_i)
end

puts ans
