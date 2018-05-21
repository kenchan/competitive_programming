n = STDIN.gets.strip.to_i
a = n.times.map { STDIN.gets.strip.to_i }

f = a.first

b = a.find {|aa| aa > f } || 0

if b == 0
  c = 0
else
  c = (b - f - 1) * 2
end

puts f - 1 + c
