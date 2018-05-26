n = STDIN.gets.chomp.to_i
s = STDIN.gets.chomp

cs = s.chars.uniq
rs = cs.map {|c|
  if s.index(c) == s.rindex(c)
    nil
  else
    (s.index(c)..s.rindex(c))
  end
}.compact

puts n.times.map {|i|
  rs.select {|r| r.include?(i+1) }.count
}.max
