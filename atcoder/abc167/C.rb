# https://atcoder.jp/contests/abc167/tasks/abc167_c


N, M, X = gets.split.map(&:to_i)
Cs = Array.new(N)
Ass = Array.new(N)
N.times do |i|
  Cs[i], *Ass[i] = gets.split.map(&:to_i)
end

puts ans
