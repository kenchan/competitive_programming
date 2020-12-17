B = gets.chomp.split('').map(&:to_i)

min = 1000

B.each_cons(3) do |i|
  d = (753 - i.join('').to_i).abs
  min = d if d < min
end

puts min
