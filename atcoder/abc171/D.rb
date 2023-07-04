# https://atcoder.jp/contests/abc171/tasks/abc171_d


N = gets.to_i
As = gets.split.map(&:to_i)
Q = gets.to_i
Bs = Array.new(Q)
Cs = Array.new(Q)
Q.times do |i|
  Bs[i], Cs[i] = gets.split.map(&:to_i)
end

puts ans
