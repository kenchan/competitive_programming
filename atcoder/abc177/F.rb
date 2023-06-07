# https://atcoder.jp/contests/abc177/tasks/abc177_f


H, W = gets.split.map(&:to_i)
As = Array.new(H)
Bs = Array.new(H)
H.times do |i|
  As[i], Bs[i] = gets.split.map(&:to_i)
end

puts ans
