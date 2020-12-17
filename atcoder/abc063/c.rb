N = gets.to_i
s = N.times.map { gets.to_i }

s.sort!
max = s.sum

if max % 10 != 0
  puts max
  exit
end

s.each do |i|
  if (max - i) % 10 != 0
    puts max - i
    exit
  end
end

puts 0
