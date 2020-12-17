N = gets.to_i
H = gets.split.map(&:to_i)

max = 0
current = 0

1.upto(N - 1) do |i|
  if H[i - 1] >= H[i]
    current += 1
  else
    current = 0
  end
  max = current if max < current
end

puts max
