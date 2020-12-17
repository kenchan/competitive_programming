n = STDIN.gets.to_i

a = n / 2
b = n % 2

puts a + b
puts b if b == 1
a.times.each { puts 2 }
