# https://atcoder.jp/contests/abc255/tasks/abc255_g


N, M = gets.split.map(&:to_i)
As = gets.split.map(&:to_i)
Xs = Array.new(M)
Ys = Array.new(M)
M.times do |i|
  Xs[i], Ys[i] = gets.split.map(&:to_i)
end

puts cond ? 'Takahashi' : 'Aoki'
