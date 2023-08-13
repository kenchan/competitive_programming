# https://atcoder.jp/contests/abc258/tasks/abc258_e

MOD = N

N, Q, X = gets.split.map(&:to_i)
Ws = gets.split.map(&:to_i)
Ks = Array.new(Q) { gets.to_i }

puts ans
