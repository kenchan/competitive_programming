# https://atcoder.jp/contests/abc257/tasks/abc257_c

N = gets.to_i
S = gets.chomp.chars.map(&:to_i)
Ws = gets.split.map(&:to_i)

Ws << Ws.max + 1

dp = Array.new(N + 1) { Array.new(Ws.size, 0) }

N.times do |i|
  w = Ws[i]
  s = S[i]

  Ws.each_with_index do |w2, je|
    correct = if s == 0
      w < w2 ? 1 : 0
    else
      w2 <= w ? 1 : 0
    end
    dp[i + 1][je] = dp[i][je] + correct
  end
end

puts dp.last.max
