S = gets.chomp
T = gets.chomp

ans = 1001

0.upto(S.size - T.size) do |i|
  c = 0
  T.size.times do |j|
    c += 1 if S[i + j] != T[j]
  end
  ans = c if c < ans
end

puts ans
