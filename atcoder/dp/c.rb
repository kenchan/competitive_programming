N = gets.to_i
a = N.times.map { gets.split.map(&:to_i) }

dp = [[0, 0, 0]]

1.upto(N) do |i|
  dp[i] = []
  dp[i][0] = [dp[i - 1][1] + a[i - 1][0], dp[i - 1][2] + a[i - 1][0]].max
  dp[i][1] = [dp[i - 1][0] + a[i - 1][1], dp[i - 1][2] + a[i - 1][1]].max
  dp[i][2] = [dp[i - 1][0] + a[i - 1][2], dp[i - 1][1] + a[i - 1][2]].max
end

puts dp[N].max
