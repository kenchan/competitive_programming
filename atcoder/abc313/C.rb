# https://atcoder.jp/contests/abc313/tasks/abc313_c


N = gets.to_i
As = gets.split.map(&:to_i)

sum = As.sum

avg1 = sum / N
avg2 = (sum + N - 1) / N

ans1 = 0
ans2 = 0

As.each {|a|
  if a < avg1
    ans1+= avg1 - a
  else
    ans2 += a - avg2
  end
}

puts [ans1, ans2].max
