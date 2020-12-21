S = gets.chomp
T = gets.chomp

puts 0.upto(S.size - 1).inject(0) {|acc, i|
  if S[i] == T[i]
    acc
  else
    acc + 1
  end
}
