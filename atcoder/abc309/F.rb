# https://atcoder.jp/contests/abc309/tasks/abc309_f


N = gets.to_i
hs = Array.new(N)
ws = Array.new(N)
ds = Array.new(N)
N.times do |i|
  hs[i], ws[i], ds[i] = gets.split.map(&:to_i)
end

puts cond ? 'Yes' : 'No'
