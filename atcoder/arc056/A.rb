A, B, K, L = gets.split.map(&:to_i)

s = K / L
r = K % L

a1 = r > 0 ? (s + 1) * B : s * B
a2 = s * B + r * A

puts [a1, a2].min
