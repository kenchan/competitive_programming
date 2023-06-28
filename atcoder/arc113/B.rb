# https://atcoder.jp/contests/arc113/tasks/arc113_b

A, B, C = gets.split.map(&:to_i)

c = (d = C % 4) == 0 ? 4 : d

b = (d = B ** c % 4) == 0 ? 4 : d

puts A ** b % 10
