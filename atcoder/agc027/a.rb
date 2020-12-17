N, x = gets.split.map(&:to_i)
an = gets.split.map(&:to_i)

ans = 0

an.sort.each do |a|
  x = x - a
  ans += 1
  if x == 0
    break
  elsif x < 0
    ans -= 1
    break
  end
end

ans -= 1 if x > 0

puts ans
