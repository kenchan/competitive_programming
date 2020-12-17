S = gets.chomp

prev = ''
current = ''
c = 0

0.upto(S.size - 1) do |i|
  current += S[i]
  if prev != current
    prev = current
    current = ''
    c += 1
  end
end

puts c
