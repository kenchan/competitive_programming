S = gets.chomp

b = S.each_char.with_index.all? do |c, i|
  if i % 2 == 0
    c == c.downcase
  else
    c == c.upcase
  end
end

puts b ? 'Yes' : 'No'
