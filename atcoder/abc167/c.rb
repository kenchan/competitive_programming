N, M, X = gets.split.map(&:to_i)
CA = N.times.map { gets.split.map(&:to_i) }

dp = []

N.times do |n|
  dp[n] = []
  M.times do |m|
    d[n][m] = [0] * M
  end
end
