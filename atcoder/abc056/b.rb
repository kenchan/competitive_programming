W, a, b = gets.split.map(&:to_i)

if a < b
  puts [b - (a + W), 0].max
else
  puts [a - (b + W), 0].max
end
