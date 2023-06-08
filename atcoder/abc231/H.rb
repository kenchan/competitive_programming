# https://atcoder.jp/contests/abc231/tasks/abc231_h


H, W, N = gets.split.map(&:to_i)
As = Array.new(N)
Bs = Array.new(N)
Cs = Array.new(N)
N.times do |i|
  As[i], Bs[i], Cs[i] = gets.split.map(&:to_i)
end

puts ans
