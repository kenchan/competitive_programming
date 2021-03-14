N = gets.to_i

if N < 1000
  puts 0
  exit
end

count = 0

a1 = N / 1000
a2 = N % 1000

if a1 == 1
  count = 1 + a2
else
  count = a1 * 1000 + a2
end

if a1 < 999
  puts count
  exit
end

b1 = a1 / 1000
b2 = a1 % 1000

if b1 == 1
  count = ((1 + b2) * 1000) + 1 + b2
else
  count += ((1 + b2) * 1000) + 1 + b2
end

c1 = b1 / 1000
c2 = b1 % 1000

d1 = c1 / 1000
d2 = c1 % 1000

e1 = d1 / 1000
e2 = d1 % 1000
