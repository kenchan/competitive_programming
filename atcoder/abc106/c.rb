s = gets.chomp
k = gets.to_i

0.upto(k - 1) do |i|
  if s[i] && s[i] != '1'
    puts s[i]
    exit
  end
end

puts 1
