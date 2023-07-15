# https://atcoder.jp/contests/abc310/tasks/abc310_b

require 'set'

N, M = gets.split.map(&:to_i)

pcf = N.times.map {
  price, c, *f = gets.split.map(&:to_i)
  [price, Set.new(f)]
}

puts pcf.permutation(2).any? {|a, b|
  if a[0] == b[0]
    b[1].size != a[1].size
  elsif a[0] < b[0]
    b[1].subset?(a[1])
  else
    a[1].subset?(b[1])
  end
} ? "Yes" : "No"
