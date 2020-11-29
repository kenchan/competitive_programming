N = gets.to_i
A = gets.split.map(&:to_i)

max = A.each_cons(2).sum {|a, b| (a - b).abs } + (0 - A[0]).abs + (0 - A.last).abs

A.each_with_index do |a, i|
  if i == 0
    puts max - (0 - a).abs - (a - A[1]).abs + (0 - A[1]).abs
  elsif i == A.size - 1
    puts max - (0 - a).abs - (a - A[i - 1]).abs + (0 - A[i - 1]).abs
  else
    puts max - (A[i - 1]- a).abs - (a - A[i + 1]).abs + (A[i - 1] - A[i + 1]).abs
  end
end
