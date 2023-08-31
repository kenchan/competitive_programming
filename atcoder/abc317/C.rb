# https://atcoder.jp/contests/abc317/tasks/abc317_c

N, M = gets.split.map(&:to_i)
@routes = N.times.map {
  N.times.map {
    nil
  }
}
M.times do |i|
  a, b, c = *gets.split.map(&:to_i)
  a -= 1
  b -= 1
  @routes[a][b] = c
  @routes[b][a] = c
end

require 'stackprof'
StackProf.run(out: 'stackprof.dump') do

@ans = 0
@visits = {}

def dfs(current, cost)
  @visits[current] = true
  @ans = cost if cost > @ans

  @routes[current].each do |n|
    next if @routes[current][n].nil?
    unless @visits[n]
      dfs(n, cost + @routes[current][n])
    end
  end

  @visits[current] = false
end

@routes.each do |start, _|
  dfs(start, 0)
end
end

puts @ans
