N, K, S = gets.split.map(&:to_i)

if S == 10 ** 9
  puts ([S] * K + [1] * (N - K)).join(' ')
else
  puts ([S] * K + [S + 1] * (N - K)).join(' ')
end
