# https://atcoder.jp/contests/abc288/tasks/abc288_d


N, K = gets.split.map(&:to_i)
As = gets.split.map(&:to_i)
Q = gets.to_i
ls = Array.new(Q)
rs = Array.new(Q)
Q.times do |i|
  ls[i], rs[i] = gets.split.map(&:to_i)
end

puts ans
