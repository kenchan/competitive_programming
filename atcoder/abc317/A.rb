# https://atcoder.jp/contests/abc317/tasks/abc317_a

N, H, X = gets.split.map(&:to_i)
Ps = gets.split.map(&:to_i)

Ps.each_with_index do |n, i|
  if H + n >= X
    puts i + 1
    exit
  end
end
