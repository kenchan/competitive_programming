# https://atcoder.jp/contests/abc038/tasks/abc038_d


N = gets.to_i
ws = Array.new(N)
hs = Array.new(N)
N.times do |i|
  ws[i], hs[i] = gets.split.map(&:to_i)
end

puts ans
