a1, a2, a3 = gets.split.map(&:to_i)
count = a1 + a2 + a3

puts (1..count).to_a.permutation(count).select {|perm|
  a = perm[0..a1]
  b = perm[a1..a2]
  c = perm[(a1 + a2)..-1]

  ok = a == a.sort && b == b.sort && c == c.sort
  break false unless ok

  ok = ok && a2.times.all? {|i|
    if a[i]
      a[i] < b[i]
    else
      true
    end
  }

  ok = ok && a3.times.all? {|i|
    if b[i]
      b[i] < c[i]
    else
      true
    end
  }
}.size
