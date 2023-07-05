# https://atcoder.jp/contests/abc307/tasks/abc307_f


N, M = gets.split.map(&:to_i)
Us = Array.new(M)
Vs = Array.new(M)
Ws = Array.new(M)
M.times do |i|
  Us[i], Vs[i], Ws[i] = gets.split.map(&:to_i)
end
K = gets.to_i
As = gets.split.map(&:to_i)
D = gets.to_i
Xs = gets.split.map(&:to_i)

puts ans
