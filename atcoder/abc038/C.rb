# https://atcoder.jp/contests/abc038/tasks/abc038_c

N = gets.to_i
as = gets.split.map(&:to_i)

nums = 1.upto(N - 1).inject([1]) {|acc, i|
  if as[i - 1] >= as[i]
    acc << 1
  else
    acc[-1] += 1
  end
  acc
}

puts nums.sum {|i| (i + 2 - 1) * (i + 2 - 2) / 2 }
