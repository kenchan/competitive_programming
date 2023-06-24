# https://atcoder.jp/contests/abc305/tasks/abc305_b

p, q = gets.chomp.split

x = %w(A X X B C X X X D E X X X X F X X X X X X X X G)

puts (x.index(p) - x.index(q)).abs
