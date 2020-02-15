N, K, Q = gets.split.map(&:to_i)

A = Q.times.map {
  gets.to_i
}

points = [K] * N

A.each do |i|
  0.upto(N - 1) do |j|
    points[j] -= 1 unless j == i - 1
  end
end

points.each do |point|
  puts 0 < point ? 'Yes' : 'No'
end
