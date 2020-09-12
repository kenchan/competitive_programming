S = gets.chomp

ans = ('a'..'z').to_a

S.each_char do |c|
  ans.delete(c)
end

puts ans.first || 'None'
