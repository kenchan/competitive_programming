# https://atcoder.jp/contests/arc056/tasks/arc056_b


N, M, S = gets.split.map(&:to_i)
us = Array.new(M)
vs = Array.new(M)
M.times do |i|
  us[i], vs[i] = gets.split.map(&:to_i)
end

puts ans
