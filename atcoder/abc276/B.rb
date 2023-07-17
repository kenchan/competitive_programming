# https://atcoder.jp/contests/abc276/tasks/abc276_b


N, M = gets.split.map(&:to_i)
As = Array.new(M)
Bs = Array.new(M)
M.times do |i|
  As[i], Bs[i] = gets.split.map(&:to_i)
end

puts ans
