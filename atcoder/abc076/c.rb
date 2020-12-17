S = gets.chomp
T = gets.chomp

match = false

(S.size - T.size).downto(0) do |i|
  str = S[i...(i + T.size)]
  match = 0.upto(T.size - 1).all? {|j| str[j] == '?' || str[j] == T[j] }

  if match
    0.upto(T.size - 1) do |j|
      S[i + j] = T[j]
    end
    break
  end
end

if match
  puts S.gsub('?', 'a')
else
  puts 'UNRESTORABLE'
end
