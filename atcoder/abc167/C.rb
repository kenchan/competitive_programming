# https://atcoder.jp/contests/abc167/tasks/abc167_c


N, M, X = gets.split.map(&:to_i)
Cs = Array.new(N)
Ass = Array.new(N)
N.times do |i|
  Cs[i], *Ass[i] = gets.split.map(&:to_i)
end

ans = 10 ** 9

(2 << N).times do |i|
  c = 0
  as = [0] * M

  N.times do |j|
    if i[j] == 1
      c += Cs[j]
      M.times do |k|
        as[k] += Ass[j][k]
      end
    end
  end

  if as.all? {|a| a >= X} && c < ans
    ans = c
  end
end

puts ans == 10 ** 9 ? -1 : ans
