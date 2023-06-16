# https://atcoder.jp/contests/abc304/tasks/abc304_h


N, M = gets.split.map(&:to_i)
ss = Array.new(M)
ts = Array.new(M)
M.times do |i|
  ss[i], ts[i] = gets.split.map(&:to_i)
end
Ls = Array.new(N)
Rs = Array.new(N)
N.times do |i|
  Ls[i], Rs[i] = gets.split.map(&:to_i)
end

puts ans
