# https://atcoder.jp/contests/abc209/tasks/abc209_d


N, Q = gets.split.map(&:to_i)
as = Array.new(N-1)
bs = Array.new(N-1)
N-1.times do |i|
  as[i], bs[i] = gets.split.map(&:to_i)
end
cs = Array.new(Q)
ds = Array.new(Q)
Q.times do |i|
  cs[i], ds[i] = gets.split.map(&:to_i)
end

puts ans
