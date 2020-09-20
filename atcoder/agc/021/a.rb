N = gets.chomp

if N =~ /^[1-9]9*$/
  puts 9 * (N.length - 1) + N.chars.first.to_i
else
  puts 9 * (N.length - 1) + N.chars.first.to_i - 1
end
