N, A, B = gets.split.map(&:to_i)

i = N / (A + B)
j = N % (A + B)

puts i * A + [j , A].min
