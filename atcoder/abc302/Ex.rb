# https://atcoder.jp/contests/abc302/tasks/abc302_h


N = gets.to_i
As = Array.new(N)
Bs = Array.new(N)
N.times do |i|
  As[i], Bs[i] = gets.split.map(&:to_i)
end
Us = Array.new(N-1)
Vs = Array.new(N-1)
N-1.times do |i|
  Us[i], Vs[i] = gets.split.map(&:to_i)
end

puts ans
