# https://atcoder.jp/contests/abc287/tasks/abc287_h


N, M = gets.split.map(&:to_i)
as = Array.new(M)
bs = Array.new(M)
M.times do |i|
  as[i], bs[i] = gets.split.map(&:to_i)
end
Q = gets.to_i
ss = Array.new(Q)
ts = Array.new(Q)
Q.times do |i|
  ss[i], ts[i] = gets.split.map(&:to_i)
end

puts ans
