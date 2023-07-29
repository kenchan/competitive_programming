# https://atcoder.jp/contests/abc312/tasks/abc312_f


N, M = gets.split.map(&:to_i)
Ts = Array.new(N)
Xs = Array.new(N)
N.times do |i|
  Ts[i], Xs[i] = gets.split.map(&:to_i)
end

puts ans
