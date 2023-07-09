# https://atcoder.jp/contests/abc309/tasks/abc309_d


def bfs(g, start)
  queue = [[start, 0]]
  visited = Hash.new(false)

  while !queue.empty?
    v, d = queue.shift

    next if visited[v]
    visited[v] = d

    g[v].each do |i|
      queue << [i, d + 1] unless visited[i]
    end
  end

  visited.values.max
end

N_1, N_2, M = gets.split.map(&:to_i)

g1 = Hash.new {|h,k| h[k] = []}
g2 = Hash.new {|h,k| h[k] = []}


M.times do |i|
  a, b = gets.split.map(&:to_i)

  if a <= N_1
    g1[a] << b
    g1[b] << a
  else
    g2[a] << b
    g2[b] << a
  end
end

a1 = bfs(g1, 1)
a2 = bfs(g2, N_1 + N_2)

puts a1 + a2 + 1
