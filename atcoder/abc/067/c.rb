N = gets.to_i
A = gets.split.map(&:to_i)

sum = A.inject(&:+)
min = 10 ** 9 * 2 + 1
s = 0

0.upto(N - 2) do |i|
  s = s + A[i]
  a = sum - s
  min = (s - a).abs < min ? (s - a).abs : min
end

puts min
