# https://atcoder.jp/contests/abc269/tasks/abc269_g


N, M = gets.split.map(&:to_i)
As = Array.new(N)
Bs = Array.new(N)
N.times do |i|
  As[i], Bs[i] = gets.split.map(&:to_i)
end

puts ans
