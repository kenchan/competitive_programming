# https://atcoder.jp/contests/arc148/tasks/arc148_a

N = gets.to_i
As = gets.split.map(&:to_i)

gcd = 0

As.each_cons(2) do |a, b|
  gcd = gcd.gcd((a - b).abs)
end

puts gcd == 1 ? 2 : 1
