K, A, B = gets.split.map(&:to_i)

if B <= A + 2
  puts K + 1
else
  res = K - (A - 1)
  b = A

  b += (res / 2) * (B - A)

  puts b += res % 2
end
