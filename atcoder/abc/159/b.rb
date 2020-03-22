S = gets.chomp

if S != S.reverse
  puts 'No'
  exit
end

s1 = S[0...((S.length - 1) / 2)]
s2 = S[((S.length + 1) / 2)...S.length]

puts s1 == s1.reverse && s2 == s2.reverse ? 'Yes' : 'No'
