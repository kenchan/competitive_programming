# https://atcoder.jp/contests/abc049/tasks/arc065_b


N, K, L = gets.split.map(&:to_i)
ps = Array.new(K)
qs = Array.new(K)
K.times do |i|
  ps[i], qs[i] = gets.split.map(&:to_i)
end
rs = Array.new(L)
ss = Array.new(L)
L.times do |i|
  rs[i], ss[i] = gets.split.map(&:to_i)
end

puts ans
