s = gets.chomp.chars
t = gets.chomp.chars

def init_dp(n, w, default = 0)
  Array.new(n + 1) { Array.new(w + 1, default) }
end

dp = init_dp(s.size, t.size)

s.each_with_index do |sc, i|
  t.each_with_index do |tc, j|
    if sc == tc
      dp[i + 1][j + 1] = dp[i][j] + 1
    else
      dp[i + 1][j + 1] = dp[i][j + 1] < dp[i + 1][j] ? dp[i + 1][j] : dp[i][j + 1]
    end
  end
end

ans = ""
i, j = s.size, t.size

while 0 < i * j
  if(dp[i][j] == dp[i - 1][j])
    i -= 1
  elsif dp[i][j] == dp[i][j - 1]
    j -= 1
  else
    ans << s[i - 1]
    i -= 1
    j -= 1
  end
end

puts ans.reverse
