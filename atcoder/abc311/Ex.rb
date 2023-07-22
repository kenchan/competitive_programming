# https://atcoder.jp/contests/abc311/tasks/abc311_h


N, X = gets.split.map(&:to_i)
Ps = gets.split.map(&:to_i)
Bs = Array.new(N)
Ws = Array.new(N)
Cs = Array.new(N)
N.times do |i|
  Bs[i], Ws[i], Cs[i] = gets.split.map(&:to_i)
end

puts ans
