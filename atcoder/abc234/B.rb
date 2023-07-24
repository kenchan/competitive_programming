# https://atcoder.jp/contests/abc234/tasks/abc234_b


N = gets.to_i
xy = N.times.map {
  gets.split.map(&:to_i)
}

ans = 0

0.upto(N - 2) do |i|
  (i + 1).upto(N - 1) do |j|
    a = xy[i]
    b = xy[j]

    length = ((a[0] - b[0]) ** 2 + (a[1] - b[1]) ** 2) ** 0.5
    if ans < length
      ans = length
    end
  end
end

puts ans
