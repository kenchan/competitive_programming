n = gets.to_i

min = 10 ** 12

1.upto(Math.sqrt(n).to_i) do |i|
  next if n % i != 0
  j = n / i
  min = min < (i + j - 2) ? min : (i + j - 2)
end

puts min
