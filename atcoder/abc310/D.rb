# https://atcoder.jp/contests/abc310/tasks/abc310_d


N, T, M = gets.split.map(&:to_i)
ab = M.times.map { gets.split.map(&:to_i) }

def divide_into_teams(people, teams = [], results = [])
  if teams.size == T - 1
    teams << people
    # 各チームをソートし、組み合わせ全体をソート
    sorted_teams = teams.map(&:sort).sort
    # 重複を避けるために、組み合わせがまだ結果に含まれていない場合だけ追加
    results << sorted_teams unless results.include?(sorted_teams)
    teams.pop
  else
    (1..(people.size - T + 1)).each do |i|
      teams << people.shift(i)
      divide_into_teams(people, teams, results)
      people.unshift(*teams.pop)
    end
  end
  results
end

people = (1..N).to_a
results = divide_into_teams(people)

results.each do |result|
  p result
end
