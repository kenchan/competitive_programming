# https://atcoder.jp/contests/arc056/tasks/arc056_d


N = gets.to_i
ws = gets.split.map(&:to_i)
Ms = Array.new(N)
tss = Array.new(N)
N.times do |i|
  Ms[i], *tss[i] = gets.split.map(&:to_i)
end

puts ans
