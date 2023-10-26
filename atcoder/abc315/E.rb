# https://atcoder.jp/contests/abc315/tasks/abc315_e


N = gets.to_i
Cs = Array.new(N)
Pss = Array.new(N)
N.times do |i|
  Cs[i], *Pss[i] = gets.split.map(&:to_i)
end

puts ans
