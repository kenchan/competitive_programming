N = gets.to_i

a = gets.to_i

m1 = a
m2 = 0
mi= 0

1.upto(N - 1) do |i|
  a = gets.to_i
  if m1 < a
    mi = i
    m2 = m1
    m1 = a
  elsif m2 < a
    m2 = a
  end 
end

0.upto(N - 1) do |i|
  puts i == mi ? m2 : m1
end

