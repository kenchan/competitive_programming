# https://atcoder.jp/contests/abc306/tasks/abc306_h

MOD = 998244353

N, M = gets.split.map(&:to_i)
As = Array.new(M)
Bs = Array.new(M)
M.times do |i|
  As[i], Bs[i] = gets.split.map(&:to_i)
end

puts ans
