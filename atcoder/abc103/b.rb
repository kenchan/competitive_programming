S = gets.chomp
T = gets.chomp

s = S.chars

S.length.times do
  c = s.shift
  s << c
  if s.join == T
    puts 'Yes'
    exit
  end
end

puts 'No'
