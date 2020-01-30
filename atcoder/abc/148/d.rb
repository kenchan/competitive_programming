n = gets.chomp.to_i
a = gets.split.map(&:to_i)

nn = 0
b = 0

a.each do |i|
  if i == nn + 1
    nn += 1
  else
    b += 1
  end
end

if nn == 0
  puts -1
else
  puts b
end
