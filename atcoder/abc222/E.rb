# https://atcoder.jp/contests/abc222/tasks/abc222_e

MOD = 998244353

N, M, K = gets.split.map(&:to_i)
As = gets.split.map(&:to_i)
Us = Array.new(N-1)
Vs = Array.new(N-1)
N-1.times do |i|
  Us[i], Vs[i] = gets.split.map(&:to_i)
end

puts ans
