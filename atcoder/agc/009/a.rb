N = gets.to_i
AB = N.times.map { gets.split.map(&:to_i) }

ans = 0

(N - 1).downto(0) do |i|
  a, b = AB[i]
  if (m = (a + ans) % b) > 0
    ans += (b - m)
  end
end

puts ans
