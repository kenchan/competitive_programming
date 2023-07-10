# https://atcoder.jp/contests/abc289/tasks/abc289_a

s = gets.chomp

puts s.chars.map {|c| c == '1' ? '0' : '1'}.join
