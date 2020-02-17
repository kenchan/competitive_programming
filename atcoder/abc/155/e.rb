n = gets.chomp.reverse.each_char.map(&:to_i)

count = 0

0.upto(n.size) do |i|
  num = n[i]
  break unless num

  if num == 10
    n[i + 1] = (n[i + 1] || 0) + 1
  elsif num == 5 && n[i + 1] && n[i + 1] >= 5
    count += num
    n[i + 1] += 1
  elsif 5 < num
    n[i + 1] = (n[i + 1] || 0) + 1
    count += 10 - num
  else
    count += num
  end
end

puts count
