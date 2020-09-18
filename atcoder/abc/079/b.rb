N = gets.to_i

if N == 1
  puts 1
else
  l = [2, 1]
  2.upto(N) do |i|
    l[i] = l[i - 2] + l[i - 1]
  end
  puts l[N]
end
