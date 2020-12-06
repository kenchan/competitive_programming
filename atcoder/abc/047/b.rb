W, H, N = gets.split.map(&:to_i)
xya = N.times.map { gets.split.map(&:to_i) }

points = [[0,0], [0, H], [W, H], [W, 0]]

xya.each do |x, y, a|
  case a
  when 1
    if points[0][0] < x
      points[0][0] = x
      points[1][0] = x
    end
  when 2
    if points[2][0] > x
      points[2][0] = x
      points[3][0] = x
    end
  when 3
    if points[0][1] < y
      points[0][1] = y
      points[3][1] = y
    end
  when 4
    if points[1][1] > y
      points[1][1] = y
      points[2][1] = y
    end
  end
end

if (points[2][0] - points[0][0] > 0) && (points[2][1] - points[0][1] > 0)
  puts (points[2][0] - points[0][0]) * (points[2][1] - points[0][1])
else
  puts 0
end
