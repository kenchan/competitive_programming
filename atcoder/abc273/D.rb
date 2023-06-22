# https://atcoder.jp/contests/abc273/tasks/abc273_d


H, W, r_s, c_s = gets.split.map(&:to_i)
N = gets.to_i
rs = Array.new(N)
cs = Array.new(N)
N.times do |i|
  rs[i], cs[i] = gets.split.map(&:to_i)
end
Q = gets.to_i
ds = Array.new(Q)
ls = Array.new(Q)
Q.times do |i|
  ds[i], ls[i] = gets.chomp.split
end

puts ans
