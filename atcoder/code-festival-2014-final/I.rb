# https://atcoder.jp/contests/code-festival-2014-final/tasks/code_festival_final_i


n = gets.to_i
xs = Array.new(n)
ys = Array.new(n)
rs = Array.new(n)
n.times do |i|
  xs[i], ys[i], rs[i] = gets.split.map(&:to_i)
end
m = gets.to_i
x1_1, y1_1, x2_1, y2_1 = gets.split.map(&:to_i)
x1_2, y1_2, x2_2, y2_2 = gets.split.map(&:to_i)
x1_m, y1_m, x2_m, y2_m = gets.split.map(&:to_i)

puts ans
