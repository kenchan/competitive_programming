X = gets.to_i

y = 100
c = 0

until X <= y
  y = (y * 1.01).floor
  c += 1
end

puts c
