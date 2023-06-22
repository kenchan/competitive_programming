# https://atcoder.jp/contests/abc273/tasks/abc273_h

MOD = 998244353

N = gets.to_i
as = Array.new(N)
bs = Array.new(N)
N.times do |i|
  as[i], bs[i] = gets.split.map(&:to_i)
end

puts ans
