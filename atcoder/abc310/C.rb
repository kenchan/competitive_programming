# https://atcoder.jp/contests/abc310/tasks/abc310_c

require 'set'

N = gets.to_i
s = N.times.inject(Set.new) {|acc, _|
  str = gets.chomp
  if acc.include?(str) || acc.include?(str.reverse)
    acc
  else
    acc << str
  end
}

puts s.size
