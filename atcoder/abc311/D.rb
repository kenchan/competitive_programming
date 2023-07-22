# https://atcoder.jp/contests/abc311/tasks/abc311_d

require 'set'

Point = Struct.new(:x, :y)

N, M = gets.split.map(&:to_i)
Ss = Array.new(N) { gets.chomp }
visited = Set.new

current = Point.new(1, 1)
visited << current
queue = [[current, Point.new(1, 0)], [current, Point.new(0, 1)]]

while queue.size > 0
  current, d = *queue.pop
  n = Point.new(current.x + d.x, current.y + d.y)

  if Ss[n.y][n.x] == "."
    queue << [n, d]
  else
    if visited.include?(current)
      next
    else
      if current.y + 1 < N && Ss[current.y + 1][current.x] == "."
        queue << [current, Point.new(0, 1)]
      end
      if current.x + 1 < M && Ss[current.y][current.x + 1] == "."
        queue << [current, Point.new(1, 0)]
      end
      if current.y - 1 > 0 && Ss[current.y - 1][current.x] == "."
        queue << [current, Point.new(0, -1)]
      end
      if current.x - 1 > 0 && Ss[current.y][current.x - 1] == "."
        queue << [current, Point.new(-1, 0)]
      end
    end
  end
  visited << current
end

puts visited.size
