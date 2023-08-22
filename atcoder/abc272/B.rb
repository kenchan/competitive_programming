# https://atcoder.jp/contests/abc272/tasks/abc272_b


N, M = gets.split.map(&:to_i)
ks = Array.new(M)
xss = Array.new(M)
M.times do |i|
  ks[i], *xss[i] = gets.split.map(&:to_i)
end

puts cond ? 'Yes' : 'No'
