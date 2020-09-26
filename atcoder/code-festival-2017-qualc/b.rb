N = gets.to_i
A = gets.split.map(&:to_i)

even_count = A.count(&:even?)

puts 3 ** N - 2 ** even_count
