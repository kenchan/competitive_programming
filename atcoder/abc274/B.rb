# https://atcoder.jp/contests/abc274/tasks/abc274_b


H, W = gets.split.map(&:to_i)
C = Array.new(H) { gets.chomp.split('') }

puts W.times.map {|i|
  H.times.select {|j|
    C[j][i] == '#'
  }.size
}.join(' ')
