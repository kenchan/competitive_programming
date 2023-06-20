# https://atcoder.jp/contests/abc292/tasks/abc292_h


N, B, Q = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)
cs = Array.new(Q)
xs = Array.new(Q)
Q.times do |i|
  cs[i], xs[i] = gets.split.map(&:to_i)
end

puts ans
