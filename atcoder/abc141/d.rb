N, M = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

A.sort!

M.times do |m|
  a = A.pop / 2
  i = A.bsearch_index{|e| e > a} || -1
  A.insert(i, a)
end

puts A.sum
