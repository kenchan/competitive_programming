s = gets.split('').tally
t = gets.split('').tally

sa = s['@'] || 0

ta = t['@'] || 0

('a'..'z').each do |c|
  sc = s[c] || 0
  tc = t[c] || 0

  if sc != tc && !%w(a t c o d e r).include?(c)
    puts "No"
    exit
  end

  if sc > tc
    ta -= sc - tc
  elsif sc < tc
    sa -= tc - sc
  end
end

if sa >= 0 && ta >= 0
  puts 'Yes'
else
  puts 'No'
end
