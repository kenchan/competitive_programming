S = gets.chomp
T = gets.chomp

ss = S.chars.inject([[S.chars.first, 0]]) do |acc, c|
  if acc.last[0] == c
    acc.last[1] += 1
  else
    acc << [c, 1]
  end
  acc
end

tt = T.chars.inject([[T.chars.first, 0]]) do |acc, c|
  if acc.size == 0
    acc << [c, 1]
    next acc
  end
  if acc.last[0] == c
    acc.last[1] += 1
  else
    acc << [c, 1]
  end
  acc
end


if ss.size != tt.size
  puts 'No'
  exit
end

ss.size.times do |i|
  s = ss[i]
  t = tt[i]


  if s[0] != t[0]
    puts 'No'
    exit
  elsif s[1] == 1 && t[1] > 1 || s[1] > 1 && t[1] == 1
    puts 'No'
    exit
  elsif s[1] > t[1]
    puts 'No'
    exit
  end
end

puts 'Yes'
