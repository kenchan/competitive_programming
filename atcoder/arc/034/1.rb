n = STDIN.gets.to_i
scores = n.times.map do
  s = STDIN.gets.split(' ').map(&:to_i)
  score = s.first(4).inject(:+)
  score + s[4] * 110 / 900.0
end
puts scores.max
