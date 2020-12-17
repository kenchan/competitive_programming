N = gets.to_i
xy = N.times.map { gets.split.map(&:to_i) }

MAX = 10 ** 9 + 1

points = {
  min_x: [MAX, MAX],
  min_y: [MAX, MAX],
  max_x: [0, 0],
  max_y: [0, 0]
}

xy.each do |(x, y)|
    binding.irb
  if x <= points[:min_x][0] && y <= points[:min_x][1]
    points[:min_x] = [x, y]
  end
  if x <= points[:min_y][0] && y <= points[:min_y][1]
    points[:min_y] = [x, y]
  end
  if x >= points[:max_x][0] && y >= points[:max_x][1]
    points[:max_x] = [x, y]
  end
  if x >= points[:max_y][0] && y >= points[:max_y][1]
    points[:max_y] = [x, y]
  end
end

p points

puts points.values.combination(2).map {|xy1, xy2|
  (xy1[0] - xy2[0]).abs + (xy1[1] - xy2[1]).abs
}.max
