N = gets.to_i
A = N.times.map { gets.to_i }

pushed = [1]

(N + 1).times do
  current = A[pushed.last - 1]
  if current == 2
    puts pushed.size
    exit
  else
    pushed << current
  end
end

puts '-1'
