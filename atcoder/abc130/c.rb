A, B, x, y = gets.split.map(&:to_i)

puts "#{(A * B / 2.0)} #{A / 2.0 == x && B / 2.0 == y ? '1' : '0'}"
