N = gets.to_i
P = gets.split.map(&:to_i)

c = 0

0.upto(N - 1) do |i|
  if i == N - 1
    if P[i] == i + 1
      c += 1
    end
  elsif P[i] == i + 1
    if P[i + 1] == i  + 2
      P[i + 1] = P[i]
    end
    c += 1
  end
end

puts c
