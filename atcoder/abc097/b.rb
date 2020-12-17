X = gets.to_i

if X < 4
  puts 1
  exit
end

max = 0

1.upto(X) do |i|
  2.upto(X) do |j|
    y = i ** j
    break if  X < y
    max = y if max < y
  end
end

puts max
