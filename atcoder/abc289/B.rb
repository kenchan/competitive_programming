# https://atcoder.jp/contests/abc289/tasks/abc289_b

class UnionFindTree
  def initialize(size)
    @parents = Array.new(size, -1)
    @sizes = Array.new(size, 1)
  end

  def root(x)
    if @parents[x] < 0
      x
    else
      @parents[x] = root(@parents[x])
    end
  end

  def unite(x, y)
    root_x = root(x)
    root_y = root(y)

    return if root_x == root_y

    if root_y < root_x
      root_x, root_y = root_y, root_x
    end

    @parents[root_y] = root_x
    @sizes[root_x] += @sizes[root_y]
  end

  def size(x)
    @sizes[root(x)]
  end
end

N, M = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)

uf = UnionFindTree.new(N + 1)

as.each do |i|
  uf.unite(i, i + 1)
end

i = 1
ans = []

while i <= N
  s = uf.size(i)
  ans << i.upto(i + s - 1).to_a.reverse
  i += s
end

puts ans.join(' ')
