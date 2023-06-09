N = gets.to_i
Ss = Array.new(N) { gets.chomp }

puts Ss.tally.sort_by {|k, v| v }.last[0]
