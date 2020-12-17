S = gets.chomp

n = m = 0

1.upto(S.size) do |i|
  if S[i - 1] != ((i % 2) == 0 ? '1' : '0')
    n += 1
  end
  if S[i - 1] != (i % 2).to_s
    m += 1
  end
end

puts [n, m].min
