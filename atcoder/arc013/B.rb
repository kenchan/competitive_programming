# https://atcoder.jp/contests/arc013/tasks/arc013_2


C = gets.to_i
Ns = Array.new(C)
Ms = Array.new(C)
Ls = Array.new(C)
C.times do |i|
  Ns[i], Ms[i], Ls[i] = gets.split.map(&:to_i)
end

puts ans
