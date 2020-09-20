X = gets.to_i

x = X % 100

c5 = x / 5
x5 = x % 5

c4 = x5 / 4
x4 = x5 % 4

c3 = x4 / 3
x3 = x4 % 3

c2 = x3 / 2
x2 = x3 % 2

c1 = x2 / 1
x1 = x2 % 1

puts ((c5 + c4 + c4 + c2 + c1) <= X / 100) ? 1 : 0
