S = gets.chomp.split('')

puts 0.upto(S.size - 1).inject(0) {|acc, i|
  if S[i] == 'U'
    acc + (S.size - i - 1) + (i * 2)
  else
    acc + (S.size - i - 1) * 2 + i
  end
}
