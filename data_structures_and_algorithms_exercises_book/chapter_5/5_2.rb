N, W = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

dp = (N + 1).times.map { [false] * W }
dp[0][0] = true

N.times do |n|
  W.times do |w|
    if A[n] <= w
      dp[n + 1][w] = dp[n][w - A[n]] || dp[n][w]
    else
      dp[n + 1][w] = dp[n][w]
    end
  end
end

puts dp[N][W]
