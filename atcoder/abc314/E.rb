# https://atcoder.jp/contests/abc314/tasks/abc314_e


N, M = gets.split.map(&:to_i)
cs = N.times.map {
  cost, _, *s = gets.split.map(&:to_i)
  [cost, s.size, s.tally]
}

dp = [0] * (M + 1)

M.times do |current|
  cs.each do |cost, size, ss|
    ss.each do |s, count|
      target = [current + s, M].min
#      dp[target] = [dp[score] + cost * (count.to_f / size), dp[target]].min
    end
  end
end

p dp

puts dp.last
