N = gets.to_i
S = gets.chomp.split('')

max = 0
current = 0

S.each do |c|
  if c == 'I'
    current += 1
    max = current if max < current
  else
    current -= 1
  end
end

puts max
