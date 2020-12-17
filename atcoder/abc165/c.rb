N, M, Q = gets.split.map(&:to_i)
abcd = Q.times.map { gets.split.map(&:to_i) }

puts (1..M).to_a.combination(N).map {|aa|
  abcd.sum do |a, b, c, d|
    aa[b - 1] - aa[a - 1] == c ? d : 0
  end
}
