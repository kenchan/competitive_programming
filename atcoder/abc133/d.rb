N = gets.to_i
A = gets.split.map(&:to_i)

ans = [A.sum - 2 * A.select.with_index {|a, i| i.odd? }.sum]

0.upto(N - 2).inject(ans) {|acc, i|
  ans << 2 * A[i] - ans.last
}

puts ans.join(' ')
