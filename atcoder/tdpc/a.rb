N = gets.to_i
points = gets.split.map(&:to_i)

def init_dp(n, w, default = 0)
  (n + 1).times.map { [default] * (w + 1) }
end

max = points.sum

dp = init_dp(N, max, false)
dp[0][0] = true

N.times do |n|
  (max + 1).times do |w|
    dp[n + 1][w] = dp[n][w - points[n]] || dp[n][w]
  end
end

puts dp.last.count(&:itself)
