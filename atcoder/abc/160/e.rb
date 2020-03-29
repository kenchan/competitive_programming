X, Y, A, B, C = gets.split.map(&:to_i)
P = gets.split.map(&:to_i).sort.last(X)
Q = gets.split.map(&:to_i).sort.last(Y)
R = gets.split.map(&:to_i).sort

loop do |r|
  paint = false
  if P.first < Q.first
    if P.first < R.last
      P.shift
      P << R.pop
      paint = true
    end
  else
    if Q.first < R.last
      Q.shift
      Q << R.pop
      paint = true
    end
  end

  if !paint || R.size == 0
    break
  end
end

puts P.inject(&:+) + Q.inject(&:+)
