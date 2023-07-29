# https://atcoder.jp/contests/abc312/tasks/abc312_g


N = gets.to_i
As = Array.new(N-1)
Bs = Array.new(N-1)
N-1.times do |i|
  As[i], Bs[i] = gets.split.map(&:to_i)
end

puts ans
