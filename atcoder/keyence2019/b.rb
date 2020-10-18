S = gets.chomp

if S.start_with?('keyence') || S.end_with?('keyence')
  puts 'YES'
  exit
end

0.upto(6) do |i|
  if S.start_with?('keyence'[0..i]) && S.end_with?('keyence'[(i + 1)..-1])
    puts 'YES'
    exit
  end
end

puts 'NO'
