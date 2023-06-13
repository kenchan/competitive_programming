# https://atcoder.jp/contests/arc013/tasks/arc013_4


N = gets.to_i
Xs = Array.new(N)
Ys = Array.new(N)
Zs = Array.new(N)
N.times do |i|
  Xs[i], Ys[i], Zs[i] = gets.split.map(&:to_i)
end

puts ans
