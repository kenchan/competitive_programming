h, n = gets.split.map(&:to_i)
ab = n.times.inject([]) do |acc|
  acc << gets.split.map(&:to_i)
end

dp = [10 ** 9] * h
dp[h] = 0

h.downto(0).each do |current_hp|
  ab.each do |a, b|
    if h <= (current_hp + a)
      dp[current_hp] = [dp[current_hp], b].min
    elsif current_hp < a
      dp[0] = [dp[0], dp[current_hp + 1] + b].min
    else
      tmp = dp[current_hp + a] + b 
      dp[current_hp] = [tmp, dp[current_hp]].min
    end
  end
end

puts dp[0]
