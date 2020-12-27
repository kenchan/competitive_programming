N = gets.to_i

max = 0
sum = 0

1.upto(N) do |i|
  s = i * (1 + i) / 2
  if N <= s
    max = i
    sum = s
    break
  end
end

if N == sum
  1.upto(max) do |i|
    puts i
  end
else
  skip = sum - N
  1.upto(max) do |i|
    puts i unless i == skip
  end
end
