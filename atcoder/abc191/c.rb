H, W = gets.split.map(&:to_i)
S = H.times.map { gets.chomp.split('') }

lr = S.map {|s|
  l = r = nil
  s.each_with_index {|c, i|
    if c == '#'
      r = i
      l = i unless l
    end
  }

  [l, r]
}

puts lr.each_cons(2).map {|(al, ar), (bl, br)|
  if ar == nil || br == nil
    2
  elsif al == bl && ar == br
    0
  elsif al != bl && ar != br
    4
  else
    2
  end
}.sum
