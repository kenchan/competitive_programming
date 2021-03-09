N = gets.to_i
AB = N.times.map { gets.split.map(&:to_i) }

ans = 10 ** 10 + 1

N.times do |i|
  sum = AB[i][0] + AB[i][1]
  if sum < ans
    ans = sum
  end

  N.times do |j|
    next if i == j
    max = AB[i][0] < AB[j][1] ? AB[j][1] : AB[i][0]

    if max < ans
      ans = max
    end
  end
end

puts ans
