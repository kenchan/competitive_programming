N, W = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

@dp = [[nil] * N] * W

def f(i, w, a)
  if i == 0
    return w == 0
  end

  return @dp[i][w] if @dp[i][w] != nil

  @dp[i][w] = f((i - 1), w, a) || f((i - 1), (w - a[i - 1]), a)
end

puts f(N, W, a) ? "Yes" : "No"
