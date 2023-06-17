# https://atcoder.jp/contests/abc306/tasks/abc306_d


N = gets.to_i

dp = Array.new(N + 1) { Array.new(2, 0) }

N.times do |i|
  x, y = gets.split.map(&:to_i)

  if x == 0
    dp[i + 1][0] = [dp[i].max + y, dp[i][0]].max
    dp[i + 1][1] = dp[i][1]
  else
    dp[i + 1][0] = dp[i][0]
    dp[i + 1][1] = [dp[i][0] + y, dp[i][1]].max
  end

end

puts dp.last.max
