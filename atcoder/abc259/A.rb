# https://atcoder.jp/contests/abc259/tasks/abc259_a


N, M, X, T, D = gets.split.map(&:to_i)

if X <= M
  puts T
else
  puts T - (X - M) * D
end
