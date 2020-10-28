c1, c2, c3 = gets.split.map(&:to_i)
c4, c5, c6 = gets.split.map(&:to_i)
c7, c8, c9 = gets.split.map(&:to_i)

a1_max = [c1, c2, c3].max

a1_max.downto(0) do |a1|
  b1 = c1 - a1
  b2 = c2 - a1
  b3 = c3 - a1
  a2 = c4 - b1
  a3 = c7 - b1

  if a2 + b2 == c5 && a2 + b3 == c6 && a3 + b2 == c8 && a3 + b3 == c9
    puts 'Yes'
    exit
  end
end

puts 'No'
