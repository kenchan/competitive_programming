N = gets.to_i
T = gets.split.map(&:to_i)
M = gets.to_i
P = M.times.map { gets.split.map(&:to_i) }

P.each do |pn, x|
  t = T.dup
  t[pn - 1] = x
  puts t.sum
end
