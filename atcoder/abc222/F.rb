# https://atcoder.jp/contests/abc222/tasks/abc222_f


N = gets.to_i
As = Array.new(N-1)
Bs = Array.new(N-1)
Cs = Array.new(N-1)
N-1.times do |i|
  As[i], Bs[i], Cs[i] = gets.split.map(&:to_i)
end
Ds = gets.split.map(&:to_i)

puts ans
