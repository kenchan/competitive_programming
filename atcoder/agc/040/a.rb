S = gets.chomp

left = [0] * (S.length + 1)
right = [0] * (S.length + 1)

S.each_char.with_index(0) {|c, i|
  if c == '<'
    left[i + 1] = left[i] + 1
  end
}

S.reverse.each_char.with_index(0) {|c, i|
  if c == '>'
    right[S.length - i - 1] = right[S.length - i] + 1
  end
}

puts 0.upto(S.length).inject(0) {|sum, i|
  sum + [left[i], right[i]].max
}
