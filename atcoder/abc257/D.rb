# https://atcoder.jp/contests/abc257/tasks/abc257_d


N = gets.to_i
xs = Array.new(N)
ys = Array.new(N)
Ps = Array.new(N)
N.times do |i|
  xs[i], ys[i], Ps[i] = gets.split.map(&:to_i)
end

puts ans
