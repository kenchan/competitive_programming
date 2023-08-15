# https://atcoder.jp/contests/abc209/tasks/abc209_d

N, Q = gets.split.map(&:to_i)
AB = (N - 1).times.map { gets.split.map(&:to_i) }
CD = Q.times.map { gets.split.map(&:to_i) }

routes = AB.inject(Hash.new {|h, k| h[k] = []}) do |hash, (a, b)|
  hash[a] << b
  hash[b] << a
  hash
end

rb = {}

queue = [[1, 0]]
until queue.empty?
  (n, d) = queue.shift
  rb[n] = d
  routes[n].each do |m|
    next if rb[m]
    queue << [m, (d + 1) % 2]
  end
end

CD.each do |c, d|
  puts rb[c] == rb[d] ? 'Town' : 'Road'
end
