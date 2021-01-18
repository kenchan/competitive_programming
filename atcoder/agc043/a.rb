H, W = gets.split.map(&:to_i)

s = H.times.map { gets.chomp.split('') }

dp = []

H.times do |h|
  dp[h] = []
  W.times do |w|
    if h == 0 && w == 0
      dp[h][w] = s[0][0] == '.' ? 0 : 1
    elsif h == 0
      dp[h][w] = dp[h][w - 1] + (s[h][w - 1] == '.' && s[h][w] == '#' ? 1 : 0)
    elsif w == 0
      dp[h][w] = dp[h - 1][w] + (s[h - 1][w] == '.' && s[h][w] == '#' ? 1 : 0)
    else
      dp[h][w] = [dp[h][w - 1] + (s[h][w - 1] == '.' && s[h][w] == '#' ? 1 : 0), dp[h - 1][w] + (s[h - 1][w] == '.' && s[h][w] == '#' ? 1 : 0)].min
    end
  end
end

puts dp[H - 1][W - 1]
