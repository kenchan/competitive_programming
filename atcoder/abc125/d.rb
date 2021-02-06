N = gets.to_i
A = gets.split.map(&:to_i)

def max(a, b)
  a > b ? a : b
end

dp = [[0, 10 ** 9 * -1]]

N.times do |i|
  dp[i + 1] = []
  dp[i + 1][0] = max(dp[i][0] + A[i], dp[i][1] - A[i])
  dp[i + 1][1] = max(dp[i][0] - A[i], dp[i][1] + A[i])
end

puts dp[N][0]
