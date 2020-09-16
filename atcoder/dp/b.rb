N, K = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)

dp = [10 ** 9] * N

dp[0] = 0

1.upto(N - 1).each do |n|
  K.times do |k|
    if n - (k + 1) < 0
      break
    end

    s = dp[n - (k + 1)] + (h[n] - h[n - (k + 1)]).abs

    dp[n] = s if s < dp[n]
  end
end

puts dp[N - 1]
