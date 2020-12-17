N = gets.to_i
B = gets.split.map(&:to_i)

a = [10 ** 6] * N

(N - 1).times do |i|
  a[i] = [a[i], B[i]].min
  a[i + 1] = B[i]
end

puts a.inject(&:+)
