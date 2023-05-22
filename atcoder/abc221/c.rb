require 'set'

n = gets.chomp.split("").map(&:to_i)

max = 0

[0, 1].repeated_permutation(n.size).each do |array|
  right = []
  left = []
  array.each_with_index do |f, i|
    if f == 0
      right << n[i]
    else
      left << n[i]
    end
  end

  next if right.empty? || left.empty?

  num = right.sort.reverse.join.to_i * left.sort.reverse.join.to_i

  if max < num
    max = num
  end
end

puts max
