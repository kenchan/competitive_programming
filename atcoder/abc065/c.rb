N, M = gets.split.map(&:to_i)

def fact(n)
  array = (1..n).to_a
  while(array.size != 1)
    array = array.each_slice(2).map {|i, j| i * (j || 1) }
  end
  return array.first
end

if N == M
  puts fact(N) * fact(M) * 2 % (10 ** 9 + 7)
elsif (N - M).abs == 1
  puts fact(N) * fact(M) % (10 ** 9 + 7)
else
  puts 0
end
