n = gets.to_i

graph = []
lines = []

1.upto(n - 1).inject([]) do
  a, b = gets.split.map(&:to_i)
  graph[a - 1] ||= []
  graph[b - 1] ||= []
  graph[a - 1] << b - 1
  graph[b - 1] << a - 1
  lines << [a - 1, b - 1]
end

k = 0
queue = [0]
line_colors = {}
used = [true]
colors = []

while node = queue.shift do
  if k < graph[node].size
    k = graph[node].size
  end
  
  color = 1
  graph[node].each do |child|
    next if used[child]
    if colors[node] == color
      color += 1
    end

    colors[child] = color
    line_colors[[node, child]] = color

    queue << child
    used[child] = true
    color += 1
  end
end

puts k

lines.each do |l|
  puts line_colors[l]
end
