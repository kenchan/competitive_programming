# https://atcoder.jp/contests/abc287/tasks/abc287_g


N = gets.to_i
as = Array.new(N)
bs = Array.new(N)
N.times do |i|
  as[i], bs[i] = gets.split.map(&:to_i)
end
Q = gets.to_i
querys = Array.new(Q) { gets.to_i }

puts ans
