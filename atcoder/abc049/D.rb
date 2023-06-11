# https://atcoder.jp/contests/abc049/tasks/arc065_b

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

root_pairs = N.times.inject({}) do |acc, i|
  acc[[pq.root(i), rs.root(i)]] ||= 0
  acc[[pq.root(i), rs.root(i)]] += 1
  acc
end

N.times.map do |i|
  ans << root_pairs[[pq.root(i), rs.root(i)]]
end

puts ans.join(" ")
