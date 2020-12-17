h, n = gets.split.map(&:to_i)
 
dp = [10 ** 9] * (h + 1)
dp[0] = 0
 
n.times do
  a,b = gets.split.map(&:to_i)
  h.times do |ch|
    nh = (ch + a < h) ? ch + a : h
    dp[nh] = (dp[nh] < dp[ch] + b) ? dp[nh] : dp[ch] + b
  end
end
 
puts dp[h]
