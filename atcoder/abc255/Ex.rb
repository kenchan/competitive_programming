# https://atcoder.jp/contests/abc255/tasks/abc255_h

MOD = 998244353

N, Q = gets.split.map(&:to_i)
Ds = Array.new(Q)
Ls = Array.new(Q)
Rs = Array.new(Q)
Q.times do |i|
  Ds[i], Ls[i], Rs[i] = gets.split.map(&:to_i)
end

puts ans
