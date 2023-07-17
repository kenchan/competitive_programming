# https://atcoder.jp/contests/abc276/tasks/abc276_e


H, W = gets.split.map(&:to_i)
Css = Array.new(H) { gets.chomp.split }

puts cond ? 'Yes' : 'No'
