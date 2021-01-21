N, M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
BC = M.times.map { gets.split.map(&:to_i) }

A.sort!
bc = BC.sort_by {|_, c| c }.reverse

rsum = 0

bc.each do |b, c|
  if A.empty? || A.first > c
    break
  end

  i = A.bsearch_index {|a| a >= c } || A.size

  count = i < b ? i : b
  rsum += c * count
  A.shift(count)
end

puts A.sum + rsum
