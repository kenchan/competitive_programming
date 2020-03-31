a, b, c = gets.split.map(&:to_i)
K = gets.to_i

K.times do 
  case [a, b, c].max
  when a
    a = a * 2
  when b
    b = b * 2
  when c
    c = c * 2
  end
end

puts a + b + c
