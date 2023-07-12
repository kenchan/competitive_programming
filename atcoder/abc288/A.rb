# https://atcoder.jp/contests/abc288/tasks/abc288_a

N = gets.to_i

N.times do |i|
  puts gets.split.map(&:to_i).sum
end
