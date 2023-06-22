x, k = gets.split.map(&:to_i)

k.times do |i|
  x = x.round(-i - 1)
end

puts x
