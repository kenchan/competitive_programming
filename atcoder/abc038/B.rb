# https://atcoder.jp/contests/abc038/tasks/abc038_b


Hs = Array.new(2)
Ws = Array.new(2)
2.times do |i|
  Hs[i], Ws[i] = gets.split.map(&:to_i)
end

puts cond ? 'YES' : 'NO'
