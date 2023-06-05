# https://atcoder.jp/contests/abc259/tasks/abc259_f


N = gets.to_i
ds = gets.split.map(&:to_i)
us = Array.new(N-1)
vs = Array.new(N-1)
ws = Array.new(N-1)
N-1.times do |i|
  us[i], vs[i], ws[i] = gets.split.map(&:to_i)
end

puts ans
