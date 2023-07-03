# https://atcoder.jp/contests/abc169/tasks/abc169_c

require 'bigdecimal/util'

A, B = gets.split.map(&:to_d)

puts (A * B).to_i
