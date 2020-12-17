SA = gets.chomp
SB = gets.chomp
SC = gets.chomp

turn = 'a'
a = b = c = 0

loop do
  if (turn == 'a' && a == SA.length) || (turn == 'b' && b == SB.length) || (turn == 'c' && c == SC.length)
    break
  end

  case turn
  when 'a'
    turn = SA[a]
    a += 1
  when 'b'
    turn = SB[b]
    b += 1
  when 'c'
    turn = SC[c]
    c += 1
  end
end

puts turn.upcase
