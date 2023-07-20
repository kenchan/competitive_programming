# https://atcoder.jp/contests/abc289/tasks/abc289_c

require 'set'

N, M = gets.split.map(&:to_i)
as = M.times.map {
  gets
  Set.new(gets.split.map(&:to_i))
}

puts (1 << M).times.select {|i|
  s = Set.new
  M.times do |j|
    if i[j] == 1
      s = s + as[j]
    end
  end

  s.size == N
}.size
