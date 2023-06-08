def find(x)
  if @parents[x] < 0
    x
  else
    @parents[x] = find(@parents[x])
  end
end

def union(x, y)
  x = find(x)
  y = find(y)

  return if x == y

  if x > y
    x, y = y, x
  end
  @parents[y] = x
end

def same(x, y)
  find(x) == find(y)
end

N, M = gets.split.map(&:to_i)

@parents = Array.new(N, -1)
ab_counts = {}

M.times do |i|
  a, b = gets.split.map(&:to_i)
  if same(a - 1, b - 1)
    puts 'No'
    exit
  end
  union(a - 1, b - 1)
  ab_counts[a - 1] ||= 0
  ab_counts[a - 1] += 1
  ab_counts[b - 1] ||= 0
  ab_counts[b - 1] += 1
end

ab_counts.each do |k, v|
  if v > 2
    puts 'No'
    exit
  end
end

puts 'Yes'
