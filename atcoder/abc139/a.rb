S = gets.chomp
T = gets.chomp
 
puts 3.times.select {|i| S[i] == T[i] }.size
