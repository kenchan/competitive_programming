N, W = gets.split.map(&:to_i)
wv = N.times.map { gets.split.map(&:to_i) }

dp =[]
dp[0] = [10 ** 9 + 1] * (10 ** 5 + 1)
dp[0][0] = 0

1.upto(N) do |i|
  dp[i] = [10 ** 9 + 1] * (10 ** 5 + 1)
  0.upto(10 ** 5) do |j|
    if j - wv[i - 1][1] >= 0
      dp[i][j] = [dp[i - 1][j], dp[i - 1][j - wv[i - 1][1]] + wv[i - 1][0]].min
    else
      dp[i][j] = dp[i - 1][j]
    end
  end
end

(10 ** 5).downto(0) do |i|
  if dp[N][i] <= W
    puts i
    break
  end
end
