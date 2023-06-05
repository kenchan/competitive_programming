# https://atcoder.jp/contests/abc259/tasks/abc259_d


N = gets.to_i
s_x, s_y, t_x, t_y = gets.split.map(&:to_i)
xs = Array.new(N)
ys = Array.new(N)
rs = Array.new(N)
N.times do |i|
  xs[i], ys[i], rs[i] = gets.split.map(&:to_i)
end

puts cond ? 'Yes' : 'No'
