r, c = STDIN.gets.split.map(&:to_i)
STDIN.gets

m = Array.new(r).map { Array.new(c) }

while l = STDIN.gets
  x, y, v = l.split.map(&:to_i)
  m[x - 1][y - 1] = v
end

0.upto(r - 2).each do |x|
  0.upto(c - 2).each do |y|

  end
end
