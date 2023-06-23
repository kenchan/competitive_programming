# https://atcoder.jp/contests/abc305/tasks/abc305_e


N, M, K = gets.split.map(&:to_i)
as = Array.new(M)
bs = Array.new(M)
M.times do |i|
  as[i], bs[i] = gets.split.map(&:to_i)
end
ps = Array.new(K)
hs = Array.new(K)
K.times do |i|
  ps[i], hs[i] = gets.split.map(&:to_i)
end

puts ans
