H, W = gets.split.map(&:to_i)

a = H.times.map { gets.chomp }

puts '#' * (W + 2)

a.each do |str|
  puts "##{str}#"
end

puts '#' * (W + 2)
