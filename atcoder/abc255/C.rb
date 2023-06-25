# https://atcoder.jp/contests/abc255/tasks/abc255_c

x, a, d, n = gets.split.map(&:to_i)

n -= 1

if d == 0
  puts (a - x).abs
  exit
elsif d < 0
  a = a + d * n
  d = d.abs
end

if a < 0 || x < 0
  min = [a, x].min.abs
  a += min
  x += min
end

if x <= a
  puts a - x
elsif a + d * n <= x
  puts x - (a + d * n)
else
  i = ((x - a) / d)
  puts [x - (a + (d * i)), (a + (d * (i + 1))) - x].min
end

