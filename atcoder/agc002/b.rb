require 'set'
N, M = gets.split.map(&:to_i)
xy = M.times.map { gets.split.map(&:to_i) }

ans = Set.new([1])
boxes = [0] + [1] * N

xy.each do |x, y|
  if ans.include?(x)
    ans << y
  end

  boxes[x] -= 1
  boxes[y] += 1

  if boxes[x] == 0
    ans.delete(x)
  end
end

puts ans.size
