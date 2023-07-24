# https://atcoder.jp/contests/abc234/tasks/abc234_h


N, K = gets.split.map(&:to_i)
xs = Array.new(N)
ys = Array.new(N)
N.times do |i|
  xs[i], ys[i] = gets.split.map(&:to_i)
end

puts ans
