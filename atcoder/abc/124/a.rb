a, b = gets.split.map(&:to_i)

ans = 0

if a <= b
  ans += b
  b -= 1
else
  ans += a
  a -= 1
end

if a <= b
  ans += b
else
  ans += a
end

puts ans
