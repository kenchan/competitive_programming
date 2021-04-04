N, W, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

def init_dp(n, w, default = 0)
  (n + 1).times.map { [default] * (w + 1) }
end

def min(a ,b)
  a < b ? a : b
end

dp = init_dp(N, W, 10 ** 9 + 1)
dp[0][0] = 0

N.times do |n|
  (W + 1).times do |w|
    if a[n] <= w
      dp[n + 1][w] = min(dp[n][w], dp[n][w - a[n]] + 1)
    else
      dp[n + 1][w] = dp[n][w]
    end
  end
end

p dp

puts dp[N][W] <= k ? 'Yes' : 'No'
