# https://atcoder.jp/contests/abc313/tasks/abc313_f


N, M = gets.split.map(&:to_i)
As = Array.new(N)
Bs = Array.new(N)
N.times do |i|
  As[i], Bs[i] = gets.split.map(&:to_i)
end
Xs = Array.new(M)
Ys = Array.new(M)
M.times do |i|
  Xs[i], Ys[i] = gets.split.map(&:to_i)
end

puts ans
