N = gets.to_i

if N.odd?
  puts 0
  exit
end

ans = 0
d = 10

loop do
  if N < d
    break
  end

  ans += N / d
  d *= 5
end

puts ans
