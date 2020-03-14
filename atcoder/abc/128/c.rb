N, M = gets.split.map(&:to_i)

sk = M.times.inject({}) {|acc, i|
  _k, *s = gets.split.map(&:to_i)
  acc[i] = s
  acc
}
cond = gets.split.map(&:to_i)

puts 0.upto(2 ** N - 1).select {|i|
  ok = true
  0.upto(M - 1) do |j|
    on = sk[j].inject(0) {|acc, k|
      acc + ((i & (2 ** (k - 1))) == 0 ? 0 : 1)
    }
    unless on % 2 == cond[j]
      ok = false
      break
    end
  end
  ok
}.size
