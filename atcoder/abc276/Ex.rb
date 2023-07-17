# https://atcoder.jp/contests/abc276/tasks/abc276_h

MOD = 3

N, Q = gets.split.map(&:to_i)
as = Array.new(Q)
bs = Array.new(Q)
cs = Array.new(Q)
ds = Array.new(Q)
es = Array.new(Q)
Q.times do |i|
  as[i], bs[i], cs[i], ds[i], es[i] = gets.split.map(&:to_i)
end

puts ans
