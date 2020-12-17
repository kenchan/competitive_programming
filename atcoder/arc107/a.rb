A, B, C = gets.split.map(&:to_i)

c = C * (1 + C) / 2

b = B * (c + c * B) / 2

a = A * (b + b * A) / 2

puts a % 998244353
