# https://atcoder.jp/contests/abc310/tasks/abc310_d


require 'set'
N, T, M = gets.split.map(&:to_i)

def dfs(player, hates, teams)
  if player == N + 1
    return teams.size == T ? 1 : 0
  end

  ans = 0

  teams.each do |team|
    if team.any? {|m| hates[player].include?(m) }
      next
    end

    team << player
    ans += dfs(player + 1, hates, teams)
    team.delete(player)
  end

  if teams.size < T
    teams << Set.new([player])
    ans += dfs(player + 1, hates, teams)
    teams.pop
  end

  ans
end

hates = M.times.inject(Hash.new {|h, k| h[k] = Set.new}) {|acc, _|
  a, b = gets.split.map(&:to_i)
  acc[a] << b
  acc[b] << a
  acc
}

puts dfs(1, hates, [])
