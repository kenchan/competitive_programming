# https://atcoder.jp/contests/abc257/tasks/abc257_f


N, M = gets.split.map(&:to_i)
Us = Array.new(M)
Vs = Array.new(M)
M.times do |i|
  Us[i], Vs[i] = gets.split.map(&:to_i)
end

puts ans
