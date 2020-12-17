N, X = gets.split.map(&:to_i)
S = gets.chomp

puts S.each_char.inject(X) {|score, c|
  if c == 'o'
    score + 1
  else
    if score < 1
      0
    else
      score - 1
    end
  end
}
