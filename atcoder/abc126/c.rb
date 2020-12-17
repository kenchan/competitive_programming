N, K = STDIN.gets.split.map(&:to_i)

def double_count(n , k)
  if k <= n
    return 0
  end

  count = 1
  while n * 2 < k
    n *= 2
    count += 1
  end

  count
end

puts 1.upto(N).inject(0) {|acc, n|
  acc + (1.0 / N) * ((1.0 / 2) ** double_count(n, K))
}
