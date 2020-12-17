H, W = gets.split.map(&:to_i)
A = H.times.map { gets.chomp.split('') }

count = A.inject(0) {|acc, line| acc + line.count('#') }

puts count == H + W - 1 ? 'Possible' : 'Impossible'
