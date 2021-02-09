N = gets.to_i
s = N.times.map { gets.chomp.split('') }

sb = 0
la = 0
ba = 0
count = 0

s.each do |str|
  if str[0] == 'B' && str[-1] == 'A'
    ba += 1
  elsif str[0] == 'B'
    sb += 1
  elsif str[-1] == 'A'
    la += 1
  end

  count += str.each_cons(2).count {|s1, s2| s1 == 'A' && s2 == 'B' }
end

if ba == 0
  puts count + [sb , la].min
else
  if sb == 0 && la == 0
    puts count + ba - 1
  else
    puts count + ba + [sb, la].min
  end
end
