# https://atcoder.jp/contests/abc023/tasks/abc023_c


R, C, K = gets.split.map(&:to_i)
N = gets.to_i
rs = Array.new(N)
cs = Array.new(N)
N.times do |i|
  rs[i], cs[i] = gets.split.map(&:to_i)
end

puts ans
