N = gets.to_i
a = gets.split.map(&:to_i)


if a.all? {|i| i == a[0] }
  puts 0
  exit
end

min = a.min
max = a.max

cost = 10 ** 9

min.upto(max) do |i|
  c = a.inject(0) {|acc, j| acc + (j - i) ** 2 }
  if c < cost
    cost = c
  end
end

puts cost
