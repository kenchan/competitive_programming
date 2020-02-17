n = gets.chomp.reverse.each_char.map(&:to_i)

count = 0

n.each_with_index do |num, i|
  if 10 ** 100 < i
    count += num
    next
  end
  if num == 10
    n[i + 1] = (n[i + 1] || 0) + 1
  elsif 5 < num
    n[i + 1] = (n[i + 1] || 0) + 1
    count += 10 - num
  else
    count += num
  end
end

puts count
