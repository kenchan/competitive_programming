require 'set'

n, m ,h, k = gets.chomp.split.map(&:to_i)
s = gets.chomp

items = Set.new

m.times do
  items << gets.chomp.split.map(&:to_i)
end

pos = [0, 0]

s.each_char do |c|
  case c
  when 'R'
    pos[0] += 1
  when 'L'
    pos[0] -= 1
  when 'U'
    pos[1] += 1
  when 'D'
    pos[1] -= 1
  end

  h -= 1

  if h < 0
    puts 'No'
    exit
  end

  if h < k && items.include?(pos)
    items.delete(pos)
    h = k
  end
end

puts 'Yes'
