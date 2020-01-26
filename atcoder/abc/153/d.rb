h = gets.to_i

c = 1
while h / 2 > 0
  h /=2
  c += 1
end

puts c.times.inject(0) {|acc, i| acc + 2 ** i }
