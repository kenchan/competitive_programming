s = gets.chomp
puts (s.length / 2).times.select {|i| s[i] != s[-(i + 1)] }.size
