# https://atcoder.jp/contests/abc292/tasks/abc292_d

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
uv = []
uf = UnionFindTree.new(N)
M.times do |i|
  uv << gets.split.map {|i| i.to_i - 1 }

  uf.unite(*uv.last)
end

ns = Hash.new(0)
ms = Hash.new(0)

N.times do |i|
  ns[uf.root(i)] += 1
end

M.times do |i|
  ms[uf.root(uv[i][0])] += 1
end

puts ns == ms ? 'Yes' : 'No'
