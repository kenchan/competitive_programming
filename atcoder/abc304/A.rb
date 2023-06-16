# https://atcoder.jp/contests/abc304/tasks/abc304_a


N = gets.to_i
ss = Array.new(N)
as = Array.new(N)
N.times do |i|
  s, a = gets.chomp.split
  ss[i], as[i] = s, a.to_i
end

min_i = as.index(as.min)

ss += ss

N.times do |i|
  puts ss[min_i + i]
end
