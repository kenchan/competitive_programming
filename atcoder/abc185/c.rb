L = gets.to_i

puts 1.upto(L - 1).inject(:*) / 1.upto(11).inject(:*) / (1.upto(L - 1 - 11).inject(:*) || 1)
