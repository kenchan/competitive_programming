# https://atcoder.jp/contests/abc312/tasks/abc312_b


N, M = gets.split.map(&:to_i)
Ss = Array.new(N) { gets.chomp }
ans = []

0.upto(N - 9) do |n|
  0.upto(M - 9) do |m|
    ok = true

    # 左上
    3.times do |i|
      3.times do |j|
        ok = ok && Ss[n + i][m + i] == '#'
      end
    end
    ok = ok && 4.times.all? {|i| Ss[n + i][m + 3] == '.' }
    ok = ok && 4.times.all? {|i| Ss[n + 3][m + i] == '.' }

    # 右下
    3.times do |i|
      3.times do |j|
        ok = ok && Ss[n + i + 6][m + i + 6] == '#'
      end
    end
    ok = ok && 4.times.all? {|i| Ss[n + 5][m + 5 + i] == '.' }
    ok = ok && 4.times.all? {|i| Ss[n + 5 + i][m + 5] == '.' }

    if ok
      ans << [n + 1, m + 1]
    end
  end
end

puts ans.sort.map {|i, j| "#{i} #{j}"}.join("\n")
