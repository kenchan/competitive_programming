# https://atcoder.jp/contests/arc013/tasks/arc013_3


N = gets.to_i
Xs = Array.new(1)
Ys = Array.new(1)
Zs = Array.new(1)
1.times do |i|
  Xs[i], Ys[i], Zs[i] = gets.split.map(&:to_i)
end
Ms = Array.new(1) { gets.to_i }
xss = Array.new(1) { Array.new(M_1) }
yss = Array.new(1) { Array.new(M_1) }
zss = Array.new(1) { Array.new(M_1) }
1.times do |i|
  M_1.times do |j|
    xss[i][j], yss[i][j], zss[i][j] = gets.split.map(&:to_i)
  end
end
Xs = Array.new(2)
Ys = Array.new(2)
Zs = Array.new(2)
2.times do |i|
  Xs[i], Ys[i], Zs[i] = gets.split.map(&:to_i)
end
Ms = Array.new(2) { gets.to_i }
X_N, Y_N, Z_N = gets.split.map(&:to_i)
M_N = gets.to_i

puts cond ? 'WIN' : 'LOSE'
