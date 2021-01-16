N, K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)

MOD = 10 ** 9 + 7

ans = 0.upto(N - 1).inject(0) {|acc, i|
  bc = 0.upto(i - 1).count {|j| A[j] < A[i] }
  acc += (K - 1) * (bc + bc * (K - 1)) / 2 % MOD
  ac = (i + 1).upto(N - 1).count {|j| A[j] < A[i] }
  acc + K * (ac + ac * K) / 2 % MOD
}

puts ans % MOD
