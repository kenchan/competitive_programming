STDIN.gets.to_i
s = STDIN.gets.split.map(&:to_i)
c = 0

s.each_with_index do |n, i|
  next if n - 1 < i
  c = c + 1 if s[n - 1] == i + 1
end

puts c
