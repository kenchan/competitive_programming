s = STDIN.gets.strip

r = s.chars.each.with_index.all? {|c, i|
  l = s[s.length - i - 1]
  l == '*' || c == '*' || l == c
}

puts r ? 'YES' : 'NO'
