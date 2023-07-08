# https://atcoder.jp/contests/abc309/tasks/abc309_d

@c = {}

def bfs(g, start, goal)
  return @c[goal] if @c[goal]
  queue = [[start, 0]]
  visited = Hash.new { false }

  while !queue.empty?
    v, d = queue.shift

    return d if v == goal

    visited[v] = true

    next unless g[v]

    g[v].each do |i|
      if @c[i] && d + 1 < @c[i]
        @c[i] = d + 1
      end
      queue << [i, d + 1] unless visited[i]
    end
  end

  nil
end

N_1, N_2, M = gets.split.map(&:to_i)

g1 = {}
g2 = {}


M.times do |i|
  a, b = gets.split.map(&:to_i)

  g1[a] ||= []
  g1[b] ||= []
  g2[a] ||= []
  g2[b] ||= []
  if a <= N_1
    g1[a] << b
    g1[b] << a
  else
    g2[a] << b
    g2[b] << a
  end
end

a1 = 1.upto(N_1).map {|i| bfs(g1, 1, i) }
a2 = (N_1 + 1).upto(N_1 + N_2 - 1).map {|i| bfs(g2, N_1 + N_2, i) }

puts a1.compact.max + a2.compact.max + 1
