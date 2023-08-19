# https://atcoder.jp/contests/abc232/tasks/abc232_c

N, M = gets.split.map(&:to_i)

AB = Array.new(N) { Array.new(N, 0) }
M.times do
  a, b = gets.split.map {|i| i.to_i - 1}
  AB[a][b] = 1
  AB[b][a] = 1
end

CD = Array.new(N) { Array.new(N, 0) }
M.times do
  c, d = gets.split.map {|i| i.to_i - 1}
  CD[c][d] = 1
  CD[d][c] = 1
end


ans = N.times.to_a.permutation(N).find {|ns|
  N.times.all? {|i|
    N.times.all? {|j|
      AB[i][j] == CD[ns[i]][ns[j]]
    }
  }
}

puts ans ? 'Yes' : 'No'



