N = gets.to_i
S = N.times.map { gets.chomp }

puts S.select {|s| s == 'WA' || s == '-' }.size * 5
