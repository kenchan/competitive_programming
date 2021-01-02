A, B = gets.split

a = A.split('').map(&:to_i).sum
b = B.split('').map(&:to_i).sum

puts a < b ? b : a
