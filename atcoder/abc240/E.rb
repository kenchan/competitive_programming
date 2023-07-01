# https://atcoder.jp/contests/abc240/tasks/abc240_e


N = gets.to_i
us = Array.new(N-1)
vs = Array.new(N-1)
N-1.times do |i|
  us[i], vs[i] = gets.split.map(&:to_i)
end

puts ans
