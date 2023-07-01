# https://atcoder.jp/contests/abc240/tasks/abc240_c


N, X = gets.split.map(&:to_i)
as = Array.new(N)
bs = Array.new(N)
N.times do |i|
  as[i], bs[i] = gets.split.map(&:to_i)
end

puts cond ? 'Yes' : 'No'
