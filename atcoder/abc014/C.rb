# https://atcoder.jp/contests/abc014/tasks/abc014_3


n = gets.to_i
as = Array.new(n)
bs = Array.new(n)
n.times do |i|
  as[i], bs[i] = gets.split.map(&:to_i)
end

puts ans
