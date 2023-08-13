# https://atcoder.jp/contests/abc258/tasks/abc258_d

N, X = gets.split.map(&:to_i)
AB = N.times.map do |i|
  gets.split.map(&:to_i)
end

m = 0

puts AB.each_with_index.map {|(a, b), i|
  m += a + b
  m + b * [(X - i - 1), 0].max
}.min
