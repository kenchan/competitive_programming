N, M = gets.split.map(&:to_i)

dp = [-1] * (N + 1)

M.times do
  dp[gets.to_i] = 0
end

dp[0] = 0

if dp[1] == -1
  dp[1] = 1
end

if dp[2] == -1
  dp[2] = dp[1] + 1
end

3.upto(N) do |i|
  next if dp[i] == 0

  x = dp[i - 2]
  y = dp[i - 1]

  dp[i] = x + y
end

puts dp[N] % 1_000_000_007
