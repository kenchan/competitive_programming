str = STDIN.readline
count = STDIN.readline.strip.to_i

count.times.each do
  l, r = STDIN.readline.split.map(&:to_i)
  sub = str[l - 1, r - l + 1]
  str.tr!(sub, sub.reverse)
end

puts str
