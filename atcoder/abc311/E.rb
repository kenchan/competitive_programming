# https://atcoder.jp/contests/abc311/tasks/abc311_e


H, W, N = gets.split.map(&:to_i)
as = Array.new(N)
bs = Array.new(N)
N.times do |i|
  as[i], bs[i] = gets.split.map(&:to_i)
end

puts ans
