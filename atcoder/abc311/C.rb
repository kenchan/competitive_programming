# https://atcoder.jp/contests/abc311/tasks/abc311_c

require 'set'

N = gets.to_i
As = gets.split.map(&:to_i)

route = {}
start = 0
point = 1

loop do
  if route[point]
    start = point
    break
  else
    n = As[point - 1]
    route[point] = n
    point = n
  end
end

point = start
ans = [point]

loop do
  ans << route[point]
  point = route[point]
  break if route[point] == start
end

puts ans.size
puts ans.join(" ")
