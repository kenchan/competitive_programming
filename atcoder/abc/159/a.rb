N, M = gets.split.map(&:to_i)

ans = 0

if 0 < N
  ans += N * (N - 1) / 2
end

if 0 < M
  ans += M * (M - 1) / 2
end

puts ans
