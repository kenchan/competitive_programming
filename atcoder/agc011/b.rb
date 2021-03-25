 = gets.to_i
A = gets.split.map(&:to_i)

A.sort!

i = 0
sum = 0

0.upto(N - 2) do |n|
  sum += A[n]
  if 2 * sum < A[n + 1]
    i = n + 1
  end
end

puts N - i
