t = gets.chomp

s1 = t.each_char.each_with_index.map {|c, i|
  if c == '?'
    if i.odd?
      '2'
    else
      '5'
    end
  else
    c
  end
}

s2 = t.each_char.each_with_index.map {|c, i|
  if c == '?'
    if i.even?
      '2'
    else
      '5'
    end
  else
    c
  end
}

max = 0
current = 0

1.upto(s1.size - 1) do |i|
  if s1[i - 1] == '2' && s1[i] == '5'
    current += 2
  elsif s1[i - 1] == '5' && s1[i] == '2'
    # do nothing
  else
    current = 0
  end
  if max < current
    max = current
  end
end

current = 0

1.upto(s2.size - 1) do |i|
  if s2[i - 1] == '2' && s2[i] == '5'
    current += 2
  elsif s2[i - 1] == '5' && s2[i] == '2'
    # do nothing
  else
    current = 0
  end
  if max < current
    max = current
  end
end

puts max
