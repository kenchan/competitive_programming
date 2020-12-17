N, K = gets.split.map(&:to_i)

h = N.times.map { gets.to_i }.sort

min = 10 ** 9 + 1

0.upto(h.size - K) do |i|
  d = h[i + K - 1] - h[i]
  min = d if d < min
end

puts min
