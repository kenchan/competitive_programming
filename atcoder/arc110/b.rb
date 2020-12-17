N = gets.to_i
T = gets.chomp

if T == '1'
  puts 10 ** 10 * 2
  exit
elsif T == '01'
  puts 10 ** 10 - 1
  exit
end

if ("110" * (N / 3 + 1)) =~ /#{T}/
  if T.start_with?('110') && T.end_with?('110')
    puts 10 ** 10 - (N / 3).ceil + 1
  else
    puts 10 ** 10 - (N / 3).ceil
  end
elsif ("110" * (N / 3 + 2)) =~ /#{T}/
  puts 10 ** 10 - (N / 3).ceil - 1
else
  puts 0
end
