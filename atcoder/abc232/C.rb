# https://atcoder.jp/contests/abc232/tasks/abc232_c


N, M = gets.split.map(&:to_i)
As = Array.new(M)
Bs = Array.new(M)
M.times do |i|
  As[i], Bs[i] = gets.split.map(&:to_i)
end
Cs = Array.new(M)
Ds = Array.new(M)
M.times do |i|
  Cs[i], Ds[i] = gets.split.map(&:to_i)
end

puts cond ? 'Yes' : 'No'
