# https://atcoder.jp/contests/abc049/tasks/arc065_b

require 'set'

class UnionFindTree
  def initialize(size)
    @parents = Array.new(size, -1)
    @sizes = Array.new(size, 1)
    @children = size.times.map {|i| Set.new([i]) }
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
    @children[root_x] += @children[root_y]
  end

  def size(x)
    @sizes[root(x)]
  end

  def children(x)
    @children[root(x)]
  end
end

N, K, L = gets.split.map(&:to_i)

pq = UnionFindTree.new(N)
K.times do |i|
  pq.unite(*gets.split.map {|i| i.to_i - 1 })
end
rs = UnionFindTree.new(N)
L.times do |i|
  rs.unite(*gets.split.map {|i| i.to_i - 1 })
end

ans = []

N.times do |i|
  pq_c = pq.children(i)
  rs_c = rs.children(i)

  ans << (pq_c & rs_c).size
end

puts ans.join(" ")
