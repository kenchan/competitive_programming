m = gets.chomp.scan(/[ACGT]+/)

puts m.map(&:length).max || 0
