N, K = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

c_sum = (N - 1).times.inject([0, a.first]) {|acc, i|
  acc[i + 2] = acc[i + 1] + a[i + 1]
  acc
}

ans = N.times.inject(0) {|acc, i|
  if c_sum[N - i] < K
    break acc
  end

  li = c_sum.bsearch_index {|s| c_sum[N - i] - s < K}

  if li
    acc + li
  else
    acc
  end

}

puts ans
