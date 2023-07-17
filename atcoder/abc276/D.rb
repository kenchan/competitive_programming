# https://atcoder.jp/contests/abc276/tasks/abc276_d


def div(n, i)
  c = 0
  while n % i == 0
    n /= i
    c += 1
  end

  return [n, c]
end

N = gets.to_i
as = gets.split.map(&:to_i)

ds = as.map {|a|
  n, c3 = *div(a, 3)
  m, c2 = *div(n, 2)
  [m, c2, c3]
}

mod = ds[0][0]
min_c2 = ds.min {|a, b| a[1] <=> b[1] }[1]
min_c3 = ds.min {|a, b| a[2] <=> b[2] }[2]
ans = 0

ds.each do |n, c2, c3|
  if mod != n
    puts "-1"
    exit
  end

  ans += (c2 - min_c2) + (c3 - min_c3)
end

puts ans
