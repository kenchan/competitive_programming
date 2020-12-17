N, L = gets.split.map(&:to_i)

if L > 0
  puts (L + 1 + L + N - 1) * (N - 1) / 2
else
  if L + N > 0
    puts (L + L + N - 1) * (N) / 2
  else
    puts (L + L + N - 2) * (N - 1) / 2
  end
end
