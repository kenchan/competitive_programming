# https://atcoder.jp/contests/abc310/tasks/abc310_h


N, H = gets.split.map(&:to_i)
Cs = Array.new(N)
Ds = Array.new(N)
N.times do |i|
  Cs[i], Ds[i] = gets.split.map(&:to_i)
end

puts ans
