N = gets.to_i
A = gets.split.map(&:to_i)

t = A.tally.to_a

ans = 0

0.upto(t.size - 2) do |i|
  (i + 1).upto(t.size - 1) do |j|
    ans += t[i][1] * t[j][1] * ((t[i][0] - t[j][0]) ** 2)
  end
end

puts ans
