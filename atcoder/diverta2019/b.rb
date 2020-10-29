R, G, B, N = gets.split.map(&:to_i)

ans = 0

0.upto(N / R) do |r|
  0.upto((N - R * r) / G) do |g|
    if (N - (r * R + g * G)) % B == 0
      ans += 1
    end
  end
end

puts ans
