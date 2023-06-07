N, M = gets.split.map(&:to_i)

def find(par, x)
  if par[x] < 0
    x
  else
    par[x] = find(par, par[x])
  end
end

def union(par, sizes, x, y)
  x = find(par, x)
  y = find(par, y)
  return if x == y

  if par[x] > par[y]
    x, y = y, x
  end
  par[y] = x
  sizes[x] += sizes[y]
end

par = Array.new(N, -1)
sizes = Array.new(N, 1)


M.times do |i|
  a, b = gets.split.map(&:to_i)
  union(par, sizes, a - 1, b - 1)
end

puts N.times.map {|i|
  root = find(par, i)
  sizes[root]
}.max
