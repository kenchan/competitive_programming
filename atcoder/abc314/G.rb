# https://atcoder.jp/contests/abc314/tasks/abc314_g


N, M, H = gets.split.map(&:to_i)
As = Array.new(N)
Bs = Array.new(N)
N.times do |i|
  As[i], Bs[i] = gets.split.map(&:to_i)
end

puts ans
