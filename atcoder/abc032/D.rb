# https://atcoder.jp/contests/abc032/tasks/abc032_d


N, W = gets.split.map(&:to_i)
vs = Array.new(N)
ws = Array.new(N)
N.times do |i|
  vs[i], ws[i] = gets.split.map(&:to_i)
end

puts ans
