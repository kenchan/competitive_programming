# https://atcoder.jp/contests/abc309/tasks/abc309_b


N = gets.to_i
Ass = Array.new(N) { gets.chomp }

N.times do |i|
  N.times do |j|
    if i == 0 && j == 0
      print Ass[i + 1][0]
    elsif i == 0
      print Ass[i][j - 1]
    elsif i == N - 1 && j == 0
      print Ass[i][j + 1]
    elsif j == 0
      print Ass[i + 1][j]
    elsif j == N - 1
      print Ass[i - 1][j]
    elsif i == N - 1 && j == N - 1
      print Ass[i - 1][j]
    elsif i == N - 1
      print Ass[i][j + 1]
    else
      print Ass[i][j]
    end
  end
  print "\n"
end
