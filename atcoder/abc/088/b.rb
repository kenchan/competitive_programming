N = gets.to_i
an = gets.split.map(&:to_i)

alice = bob = 0

an.sort.reverse.each_with_index do |a, i|
  if i % 2 == 0
    alice += a
  else
    bob += a
  end
end

puts alice - bob
