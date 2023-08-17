# https://atcoder.jp/contests/abc227/tasks/abc227_c


N = gets.to_i

ans = 0
a = 1

while a * a * a <= N do
  b = a
  while a * b * b <= N do
    ans += (N / (a * b)) - (b - 1)
    b += 1
  end
  a += 1
end

puts ans
