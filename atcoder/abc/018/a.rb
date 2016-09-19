array = STDIN.read.split.map(&:to_i)
rank = array.sort.reverse

array.each do |i|
  puts rank.index(i) + 1
end
