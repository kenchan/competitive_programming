A, B = gets.split.map(&:to_i)

puts A.upto(B).select {|n|
  s = n.to_s
  s[0] == s[4] && s[1] == s[3]
}.size
