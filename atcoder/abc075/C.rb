# https://atcoder.jp/contests/abc075/tasks/abc075_c

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
ab = Array.new(M)
M.times do |i|
  ab[i] = gets.split.map(&:to_i)
end

ans = 0

M.times do |i|
  t = UnionFindTree.new(N)
  ab.each_with_index do |(a, b), j|
    next if i == j
    t.unite(a - 1, b - 1)
  end
  num = 0
  N.times do |j|
    num += 1 if j == t.root(j)
  end

  if num > 1
    ans += 1
  end
end

puts ans
