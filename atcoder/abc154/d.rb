n, k = gets.split.map(&:to_i)
means = gets.split.map {|num|
  (1 + num.to_i) / 2.0
}

sums = [0]

0.upto(k - 1) do |i|
  sums[0] += means[i]
end

max = sums[0]

k.upto(n - 1) do |i|
  sums[i - k + 1] = sums[i - k] - means[i - k] + means[i]
  if max < sums[i - k + 1]
    max = sums[i - k + 1]
  end
end

puts max
