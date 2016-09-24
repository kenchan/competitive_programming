s = STDIN.gets.strip
c = STDIN.gets.to_i

a = 'a'.codepoints.first

r = s.codepoints.inject([]) do |rs, char|
  d =  char - a - 26
  if char == a
    rs << char
  elsif (c + d) < 0
    rs << char
  else
    c = c + d
    rs << a
  end
end

if 0 < c
  r[-1] = r.last + (c % 26)
end

puts r.map(&:chr).join
