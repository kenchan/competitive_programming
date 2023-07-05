# https://atcoder.jp/contests/abc307/tasks/abc307_c


H_A, W_A = gets.split.map(&:to_i)
As = Array.new(H_A) { gets.chomp }
H_B, W_B = gets.split.map(&:to_i)
Bs = Array.new(H_B) { gets.chomp }
H_X, W_X = gets.split.map(&:to_i)
Xs = Array.new(H_X) { gets.chomp }

puts cond ? 'Yes' : 'No'
