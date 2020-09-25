N = gets.to_i
A = gets.split.map(&:to_i)

sum = min = A.sum

0.upto(A.size - 1).inject(0) do |acc, i|
  acc += A[i]
  diff = (acc - (sum - acc)).abs
  min = diff if diff < min
  acc
end

puts min
