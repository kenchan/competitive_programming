N = gets.to_i

ans = 11

1.upto(Math.sqrt(N)) do |i|
  next if N % i != 0

  a, b = i, N / i

  f = a.to_s.length < b.to_s.length ? b.to_s.length : a.to_s.length

  if f < ans
    ans = f
  end
end

puts ans
