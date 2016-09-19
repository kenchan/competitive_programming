str = 'indeednow'.chars.sort
STDIN.gets.to_i.times do
  s = STDIN.gets.strip.chars
  puts s.sort == str ? 'YES' : 'NO'
end
