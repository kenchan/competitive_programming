# https://atcoder.jp/contests/abc315/tasks/abc315_f


N = gets.to_i
Xs = Array.new(N)
Ys = Array.new(N)
N.times do |i|
  Xs[i], Ys[i] = gets.split.map(&:to_i)
end

puts ans
