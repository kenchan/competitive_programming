# https://atcoder.jp/contests/abc120/tasks/abc120_d

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
As = Array.new(M)
Bs = Array.new(M)
M.times do |i|
  As[i], Bs[i] = gets.split.map(&:to_i)
  As[i] -= 1
  Bs[i] -= 1
end

ans = [N * (N - 1) / 2]

uf = UnionFindTree.new(N)

M.times do |i|
  a, b = As[M - i - 1], Bs[M - i - 1]
  root_a = uf.root(a)
  root_b = uf.root(b)
  if root_a == root_b
    ans << ans.last
  else
    ans << ans.last - uf.size(root_a) * uf.size(root_b)
    uf.unite(a, b)
  end
end

puts ans.reverse[1..-1].join("\n")
