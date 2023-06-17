N, K, Q = gets.split.map(&:to_i)

a = Array.new(N, 0)
top = []

Q.times do |i|
  x, y = gets.split.map(&:to_i)

  out = a[x - 1]
  a[x - 1] = y

  if top.last > 

  if i <= K
    tops[y] ||= 0
    tops[y] += 1
    ans += y
  elsif tops[out] && tops[out] > 0
    tops[out] -= 1
    tops[y] ||= 0
    tops[y] += 1

    ans = ans - out + x
  end
  p a
  p tops

  puts ans
end
