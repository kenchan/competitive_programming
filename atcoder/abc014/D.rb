# https://atcoder.jp/contests/abc014/tasks/abc014_4


N = gets.to_i
xs = Array.new(N-1)
ys = Array.new(N-1)
N-1.times do |i|
  xs[i], ys[i] = gets.split.map(&:to_i)
end
Q = gets.to_i
as = Array.new(Q)
bs = Array.new(Q)
Q.times do |i|
  as[i], bs[i] = gets.split.map(&:to_i)
end

puts ans
