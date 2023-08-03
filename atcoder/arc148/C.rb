# https://atcoder.jp/contests/arc148/tasks/arc148_c


N, Q = gets.split.map(&:to_i)
Ps = gets.split.map(&:to_i)
Ms = Array.new(Q)
vss = Array.new(Q)
Q.times do |i|
  Ms[i], *vss[i] = gets.split.map(&:to_i)
end

puts ans
