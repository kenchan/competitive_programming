N = gets.to_i
A = gets.split.map(&:to_i).sort

p A[0..3]
b = Array.new((10 ** 6) + 1, 0)

A.each do |a|
  if b[a] == 2
    next
  end
  a.step(10 ** 6, a) do |i|
    b[i] += 1
  end
end

puts A.select {|a| b[a] == 1 }.size