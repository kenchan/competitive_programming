N = gets.to_i
S = gets.chomp.split('')

puts 0.upto(N - 2).count {|i|
  S[i] == 'A' && S[i + 1] == 'B' && S[i + 2] == 'C'
}
