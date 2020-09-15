N = gets.to_i
h = gets.split.map(&:to_i)

dp = [10 ** 9] * N

dp[0] = 0
dp[1] = (h[0] - h[1]).abs

1.upto(N - 1) do |n|
  dp[n] = [dp[n - 2] + (h[n - 2] - h[n]).abs, dp[n - 1] + (h[n - 1] - h[n]).abs, dp[n]].min
end

puts dp[N - 1]
