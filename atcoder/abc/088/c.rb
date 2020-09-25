X, Y = gets.split.map(&:to_i)

x = X
ans = 1

loop do
  x = x * 2
  break if Y <  x
  ans += 1
end

puts ans
