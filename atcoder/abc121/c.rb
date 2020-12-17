N, M = gets.split.map(&:to_i)
AB = N.times.map { gets.split.map(&:to_i) }

r = M
m = 0

AB.sort_by {|a, _| a }.each do |a, b|
  if b <= r
    m += b * a
    r = r - b
  else
    m += a * r
    r = 0
  end
  break if r == 0
end

puts m
