require 'prime'
a, b = STDIN.gets.split(' ').map(&:to_i)

a = (1..a).inject(:*)
b = (1..b).inject(:*)

count = 0
Prime.each(a) do |r|
  break if a < (b * r)
  count = count + 1 if (a % (b * r)) == 0
end

puts count % 1_000_000_007
