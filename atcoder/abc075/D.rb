# https://atcoder.jp/contests/abc075/tasks/abc075_d


N, K = gets.split.map(&:to_i)
xs = Array.new(N)
ys = Array.new(N)
N.times do |i|
  xs[i], ys[i] = gets.split.map(&:to_i)
end

puts ans
