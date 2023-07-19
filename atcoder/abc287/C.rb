# https://atcoder.jp/contests/abc287/tasks/abc287_c


N, M = gets.split.map(&:to_i)
us = Array.new(M)
vs = Array.new(M)
M.times do |i|
  us[i], vs[i] = gets.split.map(&:to_i)
end

puts cond ? 'Yes' : 'No'
