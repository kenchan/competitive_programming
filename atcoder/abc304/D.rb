# https://atcoder.jp/contests/abc304/tasks/abc304_d


W, H = gets.split.map(&:to_i)
N = gets.to_i
ps = Array.new(N)
qs = Array.new(N)
N.times do |i|
  ps[i], qs[i] = gets.split.map(&:to_i)
end
A = gets.to_i
as = gets.split.map(&:to_i)
B = gets.to_i
bs = gets.split.map(&:to_i)

puts ans
