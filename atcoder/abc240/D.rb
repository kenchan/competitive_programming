# https://atcoder.jp/contests/abc240/tasks/abc240_d

N = gets.to_i
as = gets.split.map(&:to_i)

list = [[0, 0]]
c = 0

as.each do |a|
  if list.last[0] == a
    if list.last[1] + 1 == a
      b = list.pop
      c -= b[1]
    else
      list.last[1] += 1
      c += 1
    end
  else
    list << [a, 1]
    c += 1
  end
  puts c
end
