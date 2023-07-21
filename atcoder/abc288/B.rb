# https://atcoder.jp/contests/abc288/tasks/abc288_b

N, K = gets.split.map(&:to_i)
Ss = Array.new(N) { gets.chomp }

puts Ss.first(K).sort
