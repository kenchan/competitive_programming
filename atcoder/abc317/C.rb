# https://atcoder.jp/contests/abc317/tasks/abc317_c

N, M = gets.split.map(&:to_i)
routes = Hash.new {|h, k| h[k] = {}}
M.times do |i|
  a, b, c = *gets.split.map(&:to_i)
  if routes[a][b].nil? || routes[a][b] < c
    routes[a][b] = c
  end
  if routes[b][a].nil? || routes[b][a] < c
    routes[b][a] = c
  end
end

ans = 0
N.times do |start|
  start += 1

  queue = [[start, Set.new([start]), 0]]

  until queue.empty?
    current, visits, length = *queue.shift

    routes[current].each do |(n, l)|
      unless visits.include?(n)
        queue << [n, visits.dup.add(n), l + length]
        if length + l > ans
          ans = length + l
        end
      end
    end
  end
end

puts ans
