# https://atcoder.jp/contests/abc309/tasks/abc309_e


N, M = gets.split.map(&:to_i)
ps = gets.split.map(&:to_i)
xs = Array.new(M)
ys = Array.new(M)
M.times do |i|
  xs[i], ys[i] = gets.split.map(&:to_i)
end

puts ans
