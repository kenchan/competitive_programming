N = gets.to_i
A = gets.split.map(&:to_i)

counts = A.group_by(&:itself).inject({}) {|h, (i, c)| h[i] = c.size; h}

1.upto(N) do |i|
  puts counts[i] || 0
end