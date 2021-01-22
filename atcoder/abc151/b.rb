N, K, M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

s = A.sum

0.upto(K) do |b|
  if (s + b) / N >= M
    puts b
    exit
  end
end

puts '-1'
