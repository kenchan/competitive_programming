# https://atcoder.jp/contests/abc312/tasks/abc312_e


N = gets.to_i
Xss = Array.new(N)
Yss = Array.new(N)
Zss = Array.new(N)
N.times do |i|
  Xss[i], Yss[i], Zss[i] = gets.split.map(&:to_i).each_slice(3).to_a.transpose
end

puts ans
