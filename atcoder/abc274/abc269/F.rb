# https://atcoder.jp/contests/abc269/tasks/abc269_f

MOD = 998244353

N, M = gets.split.map(&:to_i)
Q = gets.to_i
As = Array.new(Q)
Bs = Array.new(Q)
Cs = Array.new(Q)
Ds = Array.new(Q)
Q.times do |i|
  As[i], Bs[i], Cs[i], Ds[i] = gets.split.map(&:to_i)
end

puts ans
