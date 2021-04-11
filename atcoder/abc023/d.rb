N = gets.to_i
HS = N.times.map { gets.split.map(&:to_i) }

right = HS.map {|h, s| h + s * (N - 1)}.max
left = 0

while 1 < (right - left)
  middle = (left + right) / 2

   array = HS.map {|h, s| (middle - h) / s }

  ok = array.sort.each_with_index.all? {|s, i| i <= s }

  if ok
    right = middle
  else
    left = middle
  end
end

puts right
