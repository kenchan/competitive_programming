N = gets.to_i

a = (N / 1.08).floor

if (a * 1.08).floor == N
  puts a
elsif ((a + 1) * 1.08).floor == N
  puts a + 1
else
  puts ':('
end
