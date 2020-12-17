N = gets.to_i
S = N.times.map { gets.chomp }

puts S.uniq.count
