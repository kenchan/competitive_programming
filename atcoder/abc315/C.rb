# https://atcoder.jp/contests/abc315/tasks/abc315_c


N = gets.to_i
Fs = Array.new(N)
Ss = Array.new(N)
N.times do |i|
  Fs[i], Ss[i] = gets.split.map(&:to_i)
end

puts ans
