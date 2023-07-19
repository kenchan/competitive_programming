# https://atcoder.jp/contests/abc287/tasks/abc287_a

N = gets.to_i
Ss = Array.new(N) { gets.chomp }

puts Ss.count {|s| s == "For" } >= (N + 1) / 2 ? "Yes" : "No"
