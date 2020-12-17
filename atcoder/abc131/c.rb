A, B, C, D = gets.split.map(&:to_i)

c = (B / C) - ((A - 1) / C) 
d = (B / D) - ((A - 1) / D) 
lcm = C.lcm(D)
l = (B / lcm) - ((A - 1) / lcm)

puts (B - A + 1) - (c + d - l)
