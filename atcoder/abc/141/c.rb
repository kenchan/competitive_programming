N, K, Q = gets.split.map(&:to_i)

points = [0] * N

1.upto(Q) do
  i = gets.to_i
  points[i - 1] += 1
end

points.each do |point|
  puts 0 < K + point - Q ? 'Yes' : 'No'
end
