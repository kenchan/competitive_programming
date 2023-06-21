# https://atcoder.jp/contests/arc130/tasks/arc130_b


H, W, C, Q = gets.split.map(&:to_i)
ts = Array.new(Q)
ns = Array.new(Q)
cs = Array.new(Q)
Q.times do |i|
  ts[i], ns[i], cs[i] = gets.split.map(&:to_i)
end

puts ans
