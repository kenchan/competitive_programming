N, T = gets.split.map(&:to_i)
ts = gets.split.map(&:to_i)

ans = 0

0.upto(N - 2) do |i|
  ans += [ts[i + 1] - ts[i], T].min
end

puts ans + T
