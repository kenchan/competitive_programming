N, Q = gets.split.map(&:to_i)
ab = (N - 1).times.map { gets.split.map(&:to_i) }
px = Q.times.map { gets.split.map(&:to_i) }

tree = ab.inject([]) do |acc, (a, b)|
  acc[a - 1] ||= []
  acc[b - 1] ||= []
  acc[a - 1] << b - 1
  acc[b - 1] << a - 1
  acc
end

points = px.inject([0] * N) {|acc, (i, x)|
  acc[i - 1] ||= 0
  acc[i - 1] += x
  acc
}

queue = [0]
used = []

while i = queue.shift
  used[i] = true
  tree[i].each do |j|
    next if used[j]
    points[j] += points[i]
    queue << j
  end
end

puts points.join(' ')
