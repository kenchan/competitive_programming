As = gets.split.map(&:to_i)

puts As.each.with_index.inject(0) {|acc, (a, i)| acc + (a * (2 ** i))}
