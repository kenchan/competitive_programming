# https://atcoder.jp/contests/abc287/tasks/abc287_b


N, M = gets.split.map(&:to_i)
Ss = Array.new(N) { gets.chomp }
Ts = Array.new(M) { gets.chomp }

puts Ts.uniq.inject(0) {|ans, t|
  ans + Ss.count {|s| s.end_with?(t) }
}
