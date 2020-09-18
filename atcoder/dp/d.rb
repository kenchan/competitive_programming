N, W = gets.split.map(&:to_i)

w = N.times.map { gets.split.map(&:to_i) }

dp = []
dp[0] = [0] * (W + 1)

1.upto(N) do |i|
  dp[i] = [0] * (W + 1)
  0.upto(W) do |j|
    if j >= w[i - 1][0]
      dp[i][j] = [dp[i - 1][j - w[i - 1][0]] + w[i - 1][1], dp[i - 1][j]].max
    else
      dp[i][j] = dp[i - 1][j]
    end
  end
end

puts dp[N][W]
