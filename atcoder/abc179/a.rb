S = gets.chomp

if S.end_with?('s')
  puts "#{S}es"
else
  puts "#{S}s"
end
