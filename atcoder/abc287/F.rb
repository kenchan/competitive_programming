# https://atcoder.jp/contests/abc287/tasks/abc287_f

MOD = 998244353

N = gets.to_i
as = Array.new(N-1)
bs = Array.new(N-1)
N-1.times do |i|
  as[i], bs[i] = gets.split.map(&:to_i)
end

puts ans
