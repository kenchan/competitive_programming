a, b, c = gets.split.map(&:to_i)

count = 0

max = [a, b, c].max

d_1, d_2 = [max - a, max - b, max - c].max(2)

count += d_1 / 2 + d_2 / 2

if d_1 % 2 == 0 && d_2 % 2 == 0
  # do nothing
elsif d_1 % 2 == 1 && d_2 % 2 == 1
  count += 1
else
  count += 2
end

puts count
