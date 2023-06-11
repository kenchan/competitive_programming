# https://atcoder.jp/contests/abc120/tasks/abc120_d

require 'set'

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

@cache = {}

def factorial(n)
  (1..n).inject(1, &:*)
end


N, M = gets.split.map(&:to_i)
As = Array.new(M)
Bs = Array.new(M)
M.times do |i|
  As[i], Bs[i] = gets.split.map(&:to_i)
end

ans = [factorial(N) / factorial(N - 2) / 2]

uf = UnionFindTree.new(N)

M.times do |i|
  uf.unite(As[M - i - 1] - 1, Bs[M - i - 1] - 1)
  roots = Set.new

  N.times do |j|
    roots << uf.root(j)
  end

  a = roots.inject(0) do |acc, root|
    if uf.size(root) > 1
      acc + factorial(uf.size(root)) / factorial(uf.size(root) - 2) / 2
    else
      acc
    end
  end

  ans << ans[0] - a
end

puts ans.reverse[1..-1].join("\n")
