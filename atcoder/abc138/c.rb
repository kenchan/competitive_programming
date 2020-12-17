N = gets.to_i
v = gets.split.map(&:to_i)

(N - 1).times do |i|
  v.sort!
  a, b = v.shift(2)
  v.unshift((a + b) / 2.0)
end

puts v. first
