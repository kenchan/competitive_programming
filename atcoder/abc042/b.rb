N, L = gets.split.map(&:to_i)
S = N.times.map { gets.chomp }

puts S.sort.join
