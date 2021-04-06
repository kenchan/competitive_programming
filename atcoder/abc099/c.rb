N = gets.to_i

def min(a, b)
  a < b ? a : b
end

dp = Array.new(N + 1, 10 ** 9)

dp[0] = 0

N.times do |i|
  dp[i + 1] = min(dp[i] + 1, dp[i + 1])

  n = 1
  while i + 6 ** n <= N
    dp[i + 6 ** n] = min(dp[i] + 1, dp[i + 6 ** n])
    n += 1
  end

  m = 1
  while i + 9 ** m <= N
    dp[i + 9 ** m] = min(dp[i] + 1, dp[i + 9 ** m])
    m += 1
  end
end

puts dp.last
