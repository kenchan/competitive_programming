# https://atcoder.jp/contests/abc314/tasks/abc314_f

MOD = 998244353

N = gets.to_i
ps = Array.new(N-1)
qs = Array.new(N-1)
N-1.times do |i|
  ps[i], qs[i] = gets.split.map(&:to_i)
end

puts ans
